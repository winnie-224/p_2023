const loaderHTML = document.createElement('div');
loaderHTML.setAttribute('id', 'pre-loader');
loaderHTML.innerHTML = "<div id='loader-container'><div></div><div></div><div></div></div>";
window.start_loader = function() {
    if (!document.getElementById('pre-loader') || (!!document.getElementById('pre-loader') && document.getElementById('pre-loader').length <= 0)) {
        document.querySelector('body').appendChild(loaderHTML);
    }
}
window.end_loader = function() {
    if (!!document.getElementById('pre-loader')) {
        document.getElementById('pre-loader').remove();
    }
}
var audio = new Audio();
var slider;
var currentPlayID;






$(function() {
    setTimeout(() => {
        end_loader()
    }, 500)
    
    $('.delete').click(function() {
        var id = $(this).attr('data-id')
        var conf = confirm("Are you sure to delete this audio?");
        if (conf === true) {
            location.replace("./delete_img.php?id=" + id)
        }
    })
    $('.play').click(function() {
        var _this = $(this)
        var id = $(this).attr('data-id')
        var type = $(this).attr('data-type')
        if (type == 'pause') {
            start_loader();
            $.ajax({
                url: './get_data.php',
                method: "POST",
                data: { id: id },
                dataType: 'json',
                error: err => {
                    console.error(err)
                    alert("An error occurred");
                    end_loader()
                },
                success: function(resp) {
                    var _modal = $('#update_music_modal')
                    if (resp.status == 'success') {
                        var data = resp.data
                        currentPlayID = data.id
                        $('#display-img').attr('src', data.image_path);
                        $('#inplay-title').text(data.title);
                        $('#inplay-description').text(data.description);
                        audio.setAttribute('src', data.audio_path)
                        audio.currentTime = 0;
                        audio.play();
                        $('.play').attr('data-type', 'pause')
                        _this.attr('data-type', 'play')
                        $('.play').removeClass('btn-outline-success btn-outline-secondary').addClass('btn-outline-secondary')
                        _this.removeClass('btn-outline-success btn-outline-secondary').addClass('btn-outline-success')
                        $('#play-btn').attr('data-value', 'pause')
                        $('#play-btn').html('<i class="fa fa-pause"></i>').focus()
                        $('#inplay-duration').text("--:--")
                        setTimeout(() => {
                            var duration = String(Math.floor(audio.duration / 60)).padStart(2, '0') + ":" + String(Math.floor(60 * Math.abs((audio.duration / 60) - Math.floor(audio.duration / 60)))).padStart(2, '0')
                            $('#inplay-duration').text(duration)
                        }, 500)

                        slider = setInterval(() => {
                            var current_slide = (audio.currentTime / audio.duration) * 100;
                            $('#playBackSlider').val(current_slide)
                            $('#currentTime').text(String(Math.floor(audio.currentTime / 60)).padStart(2, '0') + ":" + String(Math.floor(60 * Math.abs((audio.currentTime / 60) - Math.floor(audio.currentTime / 60)))).padStart(2, '0'))
                        }, 500)
                    } else {
                        console.error(err)
                        alert("An error occurred");
                    }
                    setTimeout(() => {
                        end_loader()
                    }, 500)

                }
            })
        }
    })
    $('#play-btn').click(function() {
        if (audio.src != '') {
            var action = $(this).attr('data-value')
            if (action == "pause") {
                $(this).attr('data-value', 'play')
                $('#play-btn').html('<i class="fa fa-play"></i>')
                audio.pause();
            } else {
                $(this).attr('data-value', 'pause')
                $('#play-btn').html('<i class="fa fa-pause"></i>')
                audio.play();
            }
        }
    })
    $('#stop-btn').click(function() {
        if (audio.src != '') {
            $('#play-btn').html('<i class="fa fa-play"></i>')
            $('#play-btn').attr('data-value', 'play')
            audio.pause();
            audio.currentTime = 0;
        }
    })


    // Playback Slider Moved Function 
    $('#playBackSlider').on('mousedown', function() {
        if (audio.src != '') {
            clearInterval(slider)
            $(this).on('mousemove', function() {
                audio.pause()
                audio.currentTime = (audio.duration * ($(this).val() / 100));
                $('#currentTime').text(String(Math.floor(audio.currentTime / 60)).padStart(2, '0') + ":" + String(Math.floor(60 * Math.abs((audio.currentTime / 60) - Math.floor(audio.currentTime / 60)))).padStart(2, '0'))
            })
        }
    })
    $('#playBackSlider').on('mouseup', function() {
        if (audio.src != '') {
            $(this).off('mousemove')
            audio.currentTime = (audio.duration * ($(this).val() / 100));
            $('#currentTime').text(String(Math.floor(audio.currentTime / 60)).padStart(2, '0') + ":" + String(Math.floor(60 * Math.abs((audio.currentTime / 60) - Math.floor(audio.currentTime / 60)))).padStart(2, '0'))
            if ($('#play-btn').attr('data-value') == 'pause') {
                audio.play()
                slider = setInterval(() => {
                    var current_slide = (audio.currentTime / audio.duration) * 100;
                    $('#playBackSlider').val(current_slide)
                    $('#currentTime').text(String(Math.floor(audio.currentTime / 60)).padStart(2, '0') + ":" + String(Math.floor(60 * Math.abs((audio.currentTime / 60) - Math.floor(audio.currentTime / 60)))).padStart(2, '0'))
                }, 500)
            }
        }
    })

    // volume slider
    $('#volume').on('mousedown', function(e) {
        $(this).on('mousemove', function() {
            var vol = $(this).val() / 100
            audio.volume = vol
            if (vol == 0) {
                $('#vol-icon').html('<i class="fa fa-volume-off"></i>')
            } else if (vol < .5) {
                $('#vol-icon').html('<i class="fa fa-volume-down"></i>')
            } else {
                $('#vol-icon').html('<i class="fa fa-volume-up"></i>')
            }
        })
    })
    $('#volume').on('mouseup', function(e) {
        $(this).off('mousemove')
    })

    // Next Btn
    $('#next-btn').click(function() {
            if (currentPlayID > 0) {
                var currentIndex = $('#music-list .item[data-id="' + currentPlayID + '"]').index();
                if (!!$('#music-list .item').eq(currentIndex + 1)) {
                    $('#music-list .item').eq(currentIndex + 1).find('.play').trigger('click')
                }
            }
        })
        // Previous Btn
    $('#prev-btn').click(function() {
        if (currentPlayID > 0) {
            var currentIndex = $('#music-list .item[data-id="' + currentPlayID + '"]').index();
            if ((currentIndex - 1) == -1) {
                audio.currentTime = 0
            } else {
                if (!!$('#music-list .item').eq(currentIndex - 1)) {
                    $('#music-list .item').eq(currentIndex - 1 ).find('.play').trigger('click')
                }
            }
        }
    })
    audio.onended = function() {
        console.log('Next Track')
        $('#next-btn').trigger('click')
        if (audio.src != '') {
            $('#play-btn').html('<i class="fa fa-play"></i>')
            $('#play-btn').attr('data-value', 'play')
            audio.pause();
            audio.currentTime = 0;
        }
    }
})
