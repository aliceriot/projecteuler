#want to find the # of sundays that occur on the first of a month during the 20th century

def make_days(end):
    out = []
    for i in range(1,end,7):
        out.append('M')
        out.append('T')
        out.append('W')
        out.append('Th')
        out.append('F')
        out.append('Sa')
        out.append('Su')
    return out


def year_chop(big_list):
    start = 0
    end = 365
    years = {}
    for year in range(1900,2001):
        if year % 100 == 0:
            if year % 400 == 0:
                end += 1
                years[year] = big_list[start:end]
                start += 366
                end += 365
            else:
                years[year] = big_list[start:end]
                start += 365
                end += 365
        else:
            if year % 4 == 0:
                end += 1
                years[year] = big_list[start:end]
                start += 366
                end += 365
            else:
                years[year] = big_list[start:end]
                start += 365
                end += 365
    return years


def separate_months(year):
    out = {}
    out['jan'] = year[:31]
    out['feb'] = year[31:59]
    out['mar'] = year[59:90]
    out['apr'] = year[90:120]
    out['may'] = year[120:151]
    out['jun'] = year[151:181]
    out['jul'] = year[181:212]
    out['aug'] = year[212:243]
    out['sep'] = year[243:273]
    out['oct'] = year[273:304]
    out['nov'] = year[304:334]
    out['dec'] = year[334:365]
    return out


def separate_leap_months(year):
    out = {}
    out['jan'] = year[:31]
    out['feb'] = year[31:60]
    out['mar'] = year[60:91]
    out['apr'] = year[91:121]
    out['may'] = year[121:152]
    out['jun'] = year[152:182]
    out['jul'] = year[182:213]
    out['aug'] = year[213:244]
    out['sep'] = year[244:274]
    out['oct'] = year[274:305]
    out['nov'] = year[305:335]
    out['dec'] = year[335:366]
    return out


def count_sundays(months):
    total = 0
    for month in months:
        if months[month][0] == 'Su':
            total += 1
    return total


def main():
    big_list = make_days(40000)
    years = year_chop(big_list)
    years.pop(1900)
    total_sundays = 0
    for year in years:
        if year % 100 == 0:
            if year % 400 == 0:
                total_sundays += count_sundays(separate_leap_months(years[year]))
            else:
                total_sundays += count_sundays(separate_months(years[year]))
        else:
            if year % 4 == 0:
                total_sundays += count_sundays(separate_leap_months(years[year]))
            else:
                total_sundays += count_sundays(separate_months(years[year]))
    return total_sundays




    

