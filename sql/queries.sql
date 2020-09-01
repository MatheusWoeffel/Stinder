--Número total de achievements
SELECT game.name, count(achievement.id) as num_achievements FROM achievement JOIN game on (game = game.id) WHERE game.name='Stardew Valley' GROUP BY game.name;

--% de realização de achievements por um dado usuário
SELECT CAST(count(userachievement.achievement) as float) / 
CAST((SELECT count(achievement.id) as num_achievements FROM achievement JOIN game on (game = game.id) WHERE game.name='Stardew Valley' GROUP BY game.name)as float) * 100 as achievement_percentage 
FROM userachievement JOIN achievement ON(userachievement.achievement = achievement.id) JOIN game ON (achievement.game = game.id) WHERE game.name='Stardew Valley' and userid=2 GROUP BY game.name;


