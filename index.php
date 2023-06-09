<?php

// soal no1
$idx = 1;
$aplikasi[1] = 'gtAkademik';
$aplikasi[2] = 'gtFinansi';
$aplikasi[3] = 'gtPerizinan';
$aplikasi[4] = 'eCampuz';
$aplikasi[5] = 'eOviz';


// soal no3

function pembagain($a, $b)
{
    $hasil = 0;
    while ($a >= $b) {
        $a -= $b;
        $hasil++;
    }
    return $hasil;
}

// soal no 4

function loopFoobar()
{
    $arr = [];
    for ($i = 1; $i < 50; $i++) {
        if ($i % 3 == 0 && $i % 5 == 0) {
            echo "FooBar <br />";
        } else if ($i % 3 == 0) {
            echo "Foo <br />";
        } else if ($i % 5 == 0) {
            echo "Bar <br />";
        }
    }
}


?>

<html lang="en">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
    <?php while ($idx < count($aplikasi)) { ?>
        <p><?= $aplikasi[$idx]; ?></p>
    <?php $idx++;
    } ?>
    <p>Soal no 3 <br /><?= pembagain(7, 2); ?></p>

    <p>Soal no 4 <br /> <?= loopFoobar(); ?></p>





</body>

</html>