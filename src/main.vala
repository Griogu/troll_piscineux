public class Troll {
	private int i = 0;
	private int color_nbr = 30;
	private string color = "\033[30m";
	private string default_color = "\033[0m";

	private void change_color () {
		if (color_nbr >= 37)
			color_nbr = 30;
		else
			color_nbr++;
		color = "\033[1;" + color_nbr.to_string () + "m";
	}

	private void print_lock () {
		for (int j = 0; j < i; j++)
			print (" ");
		print (color + "Lock ta session !!\n" + default_color);
		change_color ();
		Thread.usleep(100000);
	}

	public void loop () {
		Process.signal (QUIT, (b) => {});
		Process.signal (INT, (a) => {});
		while (true) {
			for (i = 0; i < 20; i++)
				print_lock ();
			for (; i > 0; i--)
				print_lock ();
		}
	}
}

void	main() {
	var troll = new Troll ();
	troll.loop ();
}
