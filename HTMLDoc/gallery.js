let images =
    {
        "SnakeCharmer": {
            features : {
                "Trees" : {x: 820, y: 0, width: 1755, height: 900},
                "Birds" : {x: 1420, y: 0, width: 1255, height: 750},
                "Sky" : {x: 0, y: 0, width: 880, height: 945},
                "Eve" : {x: 680, y: 930, width: 520, height: 1250},
                "Parrots" : {x: 1800, y: 160, width: 240, height: 380},
            },
            width: 3556,
            height:3147,
            source: "images/SnakeCharmer.jpg",
            img: document.createElement("IMG")
        },
                "Surprise": {
            features : {
                "Tiger" : {x: 0, y: 1200, width: 1700, height: 900},
                "Rain" : {x: 1150, y: 0, width: 1840, height: 1220},
                "Foliage" : {x: 0, y: 525, width: 2990, height: 815},


            },
            width: 3000,
            height:2393,
            source: "images/Surprised.jpg",
            img: document.createElement("IMG")
        },
                "Lion": {
            features : {
              "Greenery" : {x: 80, y: 0, width: 219, height: 106},
              "Flowers" : {x: 467, y: 139, width: 334, height: 234},
              "Sunset" : {x: 264, y: 49, width: 230, height: 230},
              "Lion" : {x: 227, y: 371, width: 214, height: 169},
            },
            width: 800,
            height:551,
            source: "images/Repast.jpg",
            img: document.createElement("IMG")
        },
                "Oedipus": {
            features : {
                "Urn" : {x: 471, y: 700, width: 179, height: 152},
                "Snake" : {x: 494, y: 924, width: 159, height: 192},
            },
            width: 650,
            height:1293,
            source: "images/Oedipus.jpeg",
            img: document.createElement("IMG")
        },        "Chimeras": {
            features : {
            },
            width: 1449,
            height:1688,
            source: "images/Chimeras.jpg",
            img: document.createElement("IMG")
        },        "Fontaine": {
            features : {

            },
            width: 1980,
            height:2589,
            source: "images/Fontaine.jpg",
            img: document.createElement("IMG")
        }

    }//,





function DisplayImage(artName, featureName)
{
    if (!images[artName])
    {
        alert("InkGallery :piece not defined " + artName);
        return
    }

    var canvas = document.getElementById("view");

    var ctx = canvas.getContext("2d");
    let img = images[artName].img;
    img.src = images[artName].source;

    ctx.fillStyle = "black";
    ctx.fillRect(0, 0, 300, 500);

    img.onload = function(){
    if (featureName){
        let feature = images[artName].features[featureName]
            if (!images[artName].features[featureName])
            {
                alert("InkGallery :feature not defined in js " + featureName);
                return
            }
        let ratio =  feature.height/feature.width;
        ctx.drawImage(
            img,
            feature.x,
            feature.y,
            feature.width,
            feature.height,
            0,
            (300-(300*ratio))/2,
            300,
            300*ratio
        );
    }
    else {
        let ratio = images[artName].height / images[artName].width;
        console.log(300, 500*ratio, ratio,images[artName].width < images[artName].height)
       // let ratio = images[artName].width / images[artName].height;
        ctx.drawImage(
            img,
            0,
            0,
            images[artName].width,
            images[artName].height,
            0,
            (500 -300*ratio)/2,
            300,
            300*ratio
        );

    }
    }
}
