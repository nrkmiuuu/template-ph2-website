<?php

$dsn = 'mysql:dbname=posse;host=db';
$user = 'root' ;
$password = 'root' ;

$dbh = new PDO($dsn, $user, $password);

$sql = 'SELECT * FROM questions ORDER BY id';
// foreach ($dbh->query($sql) as $row) {
//     print $row['id'] . "\t";
//     print $row['content'] . "\t";
//     print $row['image'] . "\n";
// }

$questions = $dbh->query("SELECT * FROM questions")->fetchAll(PDO::FETCH_ASSOC);
$choices = $dbh->query("SELECT * FROM choices")->fetchAll(PDO::FETCH_ASSOC);

foreach ($choices as $key => $choice) {
    $index = array_search($choice["question_id"], array_column($questions, 'id'));
    $questions[$index]["choices"][] = $choice;
}
var_dump ($questions);
?>

<!-- ORDER BY name 名前順に出す
FROM fruit フルーツというテーブルの中から
SELECT name, color, calories フルーツの中の３つをもってきて
SELECT * 全部もってくる -->