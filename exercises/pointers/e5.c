void split_time(long total_sec, int *hr, int *min, int *sec)
{
	*hr = (int) total_sec / 3600;
	*min = (int) (total_sec - (*hr * 3600)) / 60;
	*sec = (int) (total_sec - (*hr * 3600) - (*min * 60));

	return 0;
}
