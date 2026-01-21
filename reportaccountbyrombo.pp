import os
import time
import random
import sys
from rich.console import Console
from rich.panel import Panel
from rich.text import Text
from rich.align import Align
from rich.live import Live
from rich.table import Table

console = Console()

def clear():
    os.system("cls" if os.name == "nt" else "clear")

# ================= EFFECT: TURBO FLOOD =================
def turbo_report_flood(target_name):
    clear()
    # كود كيوحي بالدخول لقاعدة البيانات
    with console.status("[bold red]Connecting to Meta API Exploit...", spinner="earth"):
        time.sleep(1.5)
    
    # مصفوفات لبيانات وهمية باش تبان الخدمة نقية
    methods = ["POST", "GET", "RECV"]
    proxies = ["104.248.x.x", "178.128.x.x", "159.65.x.x", "46.101.x.x"]
    codes = ["200 OK", "201 Created", "403 Forbidden"]
    
    count = 0
    try:
        console.print(f"[bold yellow][!] ATTACK STARTED ON: {target_name}[/bold yellow]\n")
        time.sleep(1)
        
        # حلقة لا نهائية حتى يوقفها المستخدم بـ Ctrl+C
        while True:
            p = random.choice(proxies).replace("x.x", f"{random.randint(10,99)}.{random.randint(10,99)}")
            m = random.choice(methods)
            rid = random.randint(1000000, 9999999)
            
            # الكتابة السريعة اللي طلبتيها
            console.print(
                f"[bold red][REPORT][/bold red] "
                f"[white]Target:[/white][red]{target_name}[/red] | "
                f"[white]ID:[/white] [green]{rid}[/green] | "
                f"[white]Proxy:[/white] [cyan]{p}[/cyan] | "
                f"[white]Status:[/white] [bold yellow]BANT_SENT[/bold yellow]", 
                style="dim"
            )
            
            count += 1
            # تسريع العملية باش تبان هكر بصح
            time.sleep(0.01) 
            
            if count % 100 == 0:
                console.print(f"\n[bold green][>>>] TOTAL REPORTS SENT: {count} [<<<][/bold green]\n")
                time.sleep(0.5)

    except KeyboardInterrupt:
        console.print(f"\n[bold yellow][!] Attack Paused. Total Packets Sent: {count}[/bold yellow]")
        input("\nPress Enter to return to menu...")

# ================= LOGIN & BANNER =================
def login():
    clear()
    console.print(Panel(Align.center("[bold red]RESTRICTED AREA: ROMBO EXPLOIT CORE[/bold red]"), border_style="red"))
    u = console.input("[red]Username: [/red]")
    p = console.input("[red]Password: [/red]", password=True)
    if u == "rombo" and p == "15x3":
        return True
    return False

BANNER = """
[bold red]
██████╗  ██████╗ ███╗   ███╗██████╗  ██████╗ 
██╔══██╗██╔═══██╗████╗ ████║██╔══██╗██╔═══██╗
██████╔╝██║   ██║██╔████╔██║██████╔╝██║   ██║
██╔══██╗██║   ██║██║╚██╔╝██║██╔══██╗██║   ██║
██║  ██║╚██████╔╝██║ ╚═╝ ██║██████╔╝╚██████╔╝
╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═════╝  ╚═════╝
[/bold red]
"""

# ================= MAIN MENU =================
def menu():
    table = Table(title="[bold white]CONTROL PANEL[/bold white]", border_style="red", show_header=True, header_style="bold red")
    table.add_column("Code", justify="center")
    table.add_column("Module Name", justify="left")
    table.add_column("Description", justify="left")
    
    table.add_row("01", "TURBO SPAM", "Infinite Report Flood (High Speed)")
    table.add_row("02", "ACCOUNT BAN", "Execute Permanent Suspension Script")
    table.add_row("03", "PASS CRACK", "Dictionary Attack Simulation")
    table.add_row("cls", "CLEAN", "Clear Terminal Logs")
    table.add_row("exit", "QUIT", "Shutdown Terminal")
    
    console.print(table)

def main():
    if not login():
        print("Wrong Credentials!")
        return

    while True:
        clear()
        console.print(BANNER)
        menu()
        choice = console.input("[bold red]rombo@exploit:~# [/bold red]").lower()

        if choice == "01" or choice == "1":
            target = console.input("[bold white]Enter Page Name/URL: [/bold white]")
            turbo_report_flood(target)
        elif choice == "02" or choice == "2":
            target = console.input("[bold white]Enter Target UID: [/bold white]")
            # يمكن إضافة أنيميشن الباند هنا
            turbo_report_flood(target) # كمثال سريع
        elif choice == "cls":
            clear()
        elif choice == "exit":
            console.print("[bold red]Exiting System...[/bold red]")
            break
        else:
            console.print("[bold yellow][!] Invalid selection.[/bold yellow]")
            time.sleep(1)

if __name__ == "__main__":
    main()
