enum ooo
{
	job_board,
	quest_board,
	map_screen
}

screen= ooo.job_board;
menu_destination=screen;
last_menu = screen;

m_col = [];

m_col[ooo.job_board] = $2f59c4;
m_col[ooo.quest_board] = $e84c31;
m_col[ooo.map_screen] = $3dc22f;