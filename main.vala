void	main() {
	int i;
	while (true) {
		for (i = 0; i < 20; i++) {
			for (int j = 0; j < i; j++)
				print (" ");
			print ("Lock ta session !!\n");
		}
		if (i == 20) {
			while (i > 0) {
				for (int j = 0; j < i; j++)
					print (" ");
				print ("Lock ta session !!\n");
				Glib.sleep(100000);
				i--;
			}
		}
	}
}
