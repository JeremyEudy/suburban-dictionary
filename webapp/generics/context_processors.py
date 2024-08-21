import datetime


def set_current_season(request):
    seasons = {
        datetime.date(month=3, day=20, year=datetime.date.today().year): "spring",
        datetime.date(month=6, day=20, year=datetime.date.today().year): "summer",
        datetime.date(month=9, day=24, year=datetime.date.today().year): "autumn",
        datetime.date(month=12, day=21, year=datetime.date.today().year): "winter",
        datetime.date(month=1, day=1, year=datetime.date.today().year): "winter"
    }
    today = datetime.date.today()
    current_season = None
    for start_date, season in seasons.items():
        if today >= start_date:
            current_season = season

    return {'season': current_season}
