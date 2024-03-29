from PIL import Image
import io
from enum import Enum
from types import SimpleNamespace
import json
import os


class Status(Enum):
    """ the color codes for discord.embeds for showing message activity
    OK = green
    KO = red
    """
    OK = 3066993
    KO = 16203840


class GachaRates(Enum):
    """ gacha rates for danmemo summoning
    """
    ADVENTURER_2_STARS = 0.54
    ADVENTURER_3_STARS = 0.10
    ADVENTURER_4_STARS = 0.02
    ASSIST_2_STARS = 0.28
    ASSIST_3_STARS = 0.05
    ASSIST_4_STARS = 0.01


class GachaRatesEleventh(Enum):
    """ gacha rates for eleventh draw
    """
    ADVENTURER_3_STARS = 0.64
    ADVENTURER_4_STARS = 0.02
    ASSIST_3_STARS = 0.33
    ASSIST_4_STARS = 0.01


class GachaRatesOnlyFourStars(Enum):
    """gacha rates for pulling assist/adventurers
    """
    ADVENTURER_4_STARS = 0.67
    ASSIST_4_STARS = 0.33


class GachaModes(Enum):
    """how the gacha is being shown
    """
    GIF = 0
    IMG = 1


class HeroAscensionStatsP(Enum):
    """ HA stats for physical units
    """
    STR=[0,36,72,108,173,238,350]
    END=[0,21,42,63,94,125,180]
    DEX=[0,8,16,32,38,52,75]
    AGI=[0,9,18,27,42,57,83]
    MAG=[0,5,10,15,24,33,50]
    HP=[0,125,250,375,600,825,1175]
    MP=[0,7,14,21,34,47,70]
    PAT=[0,36,72,108,173,238,350]
    MAT=[0,5,10,15,24,33,50]
    DEF=[0,21,42,63,94,125,180]


class HeroAscensionStatsM(Enum):
    """ HA stats for magical units
    """
    STR = [0,6,12,18,28,38,51]
    END = [0,19,38,57,86,115,161]
    DEX = [0,9,18,27,42,57,79]
    AGI = [0,9,18,27,42,57,79]
    MAG = [0,33,66,99,161,223,335]
    HP = [0,121,242,363,584,805,1125]
    MP = [0,8,16,24,38,52,80]
    PAT = [0,6,12,18,28,38,51]
    MAT = [0,33,66,99,161,223,335]
    DEF = [0,19,38,57,86,115,161]


class HeroAscensionStatsB(Enum):
    """ HA stats for balance units
    """
    STR = [0,15,30,45,70,95,137]
    END = [0,19,38,57,86,115,168]
    DEX = [0,11,22,33,50,67,95]
    AGI = [0,3,6,9,14,19,25]
    MAG = [0,28,56,84,141,198,310]
    HP = [0,123,246,369,592,815,1150]
    MP = [0,10,20,30,46,62,100]
    PAT = [0,15,30,45,70,95,137]
    MAT = [0,28,56,84,141,198,310]
    DEF = [0,19,38,57,86,115,168]


class HeroAscensionStatsD(Enum):
    """ HA stats for defensive units
    """
    STR = [0,31,62,93,153,213,325]
    END = [0,19,38,57,86,115,168]
    DEX = [0,11,22,33,50,67,95]
    AGI = [0,3,6,9,14,19,25]
    MAG = [0,17,34,51,78,105,149]
    HP = [0,128,256,384,612,840,1200]
    MP = [0,9,18,27,42,57,90]
    PAT = [0,31,62,93,153,213,325]
    MAT = [0,17,34,51,78,105,149]
    DEF = [0,19,38,57,86,115,168]


class HeroAscensionStatsH(Enum):
    """ HA stats for healing units
    """
    STR = [0,15,30,45,70,95,137]
    END = [0,19,38,57,86,115,168]
    DEX = [0,11,22,33,50,67,95]
    AGI = [0,3,6,9,14,19,25]
    MAG = [0,28,56,84,141,198,310]
    HP = [0,123,246,369,592,815,1150]
    MP = [0,10,20,30,46,62,100]
    PAT = [0,15,30,45,70,95,137]
    MAT = [0,28,56,84,141,198,310]
    DEF = [0,19,38,57,86,115,168]


def format_row_as_dict(**kwargs):
    for key in kwargs.keys():
        globals()[key]=kwargs[key]
    return kwargs


def format_row_as_sns(**kwargs):
    d = format_row_as_dict(**kwargs)
    ns = SimpleNamespace(**d)
    return ns


def dict_to_sns(d):
    return SimpleNamespace(**d)


def sns_to_dict(sns):
    return vars(sns)


def getDefaultEmoji(emojiName):
    """ given a list of emoji names or just an emoji name return the
    unicode for that emoji

    Arguments:
        emojiName {string} -- the name of the default emojis in discord

    Returns:
        List of String or String -- unicode for the emoji name
        None -- if emojis for that name don't exist
    """

    with open("emoji_map.json", 'r', encoding="utf8") as f:
        emoji_json_dict = json.load(f)
        if(isinstance(emojiName, list)):
            ret_list = []
            for emoji in emojiName:
                ret_list.append(emoji_json_dict.get(emoji))
            return ret_list
        else:
            return emoji_json_dict.get(emojiName)
def remove_values_from_list(the_list, val):
   return [value for value in the_list if value != val]

class CustomEmoji:
    def __init__(self, id_inner, name, plural, id_discord):
        self.id_inner = id_inner
        self.name = name
        self.plural = plural
        self.id_discord = id_discord

    def toString(self,ctx):
        return str(ctx.bot.get_emoji(self.id_discord))


emojis = {  CustomEmoji("potato1","small potato","small potatoes",698248273387061439),
            CustomEmoji("potato2","medium potato","medium potatoes",698248273500307503),
            CustomEmoji("potato3","big potato","big potatoes",698248273613291590),
            CustomEmoji("crepe","crepe","crepes",698247637899411521),
            CustomEmoji("hexdummy","hexdummy","hexdummy",698471235927146526),
            CustomEmoji("hex","hex","hex",698357886492999753),
            CustomEmoji("limitbreak_0","limitbreak_0","limitbreak_0",700362619038597140),
            CustomEmoji("limitbreak_1","limitbreak_1","limitbreak_1",700362619038597140),
            CustomEmoji("limitbreak_2","limitbreak_2","limitbreak_2",700362619055505458),
            CustomEmoji("limitbreak_3","limitbreak_3","limitbreak_3",700362619340587048),
            CustomEmoji("limitbreak_4","limitbreak_4","limitbreak_4",700362619202043994),
            CustomEmoji("limitbreak_5","limitbreak_5","limitbreak_5",700362619223015585),
            CustomEmoji("rank_6","rank_6","rank_6",700362778774339625),
            CustomEmoji("rank_7","rank_7","rank_7",700362690077655232),
            CustomEmoji("rank_8","rank_8","rank_8",700362677880356894),
            CustomEmoji("rank_9","rank_9","rank_9",700362704732291234),
            CustomEmoji("rank_10","rank_10","rank_10",700362719051907103),
            CustomEmoji("rank_11","rank_11","rank_11",700362727897432076),
            CustomEmoji("rank_12","rank_12","rank_12",700362736378577030),
            CustomEmoji("star_on","star_on","star_on",700406541232242729),
            CustomEmoji("star_off","star_off","star_off",700406550044606470),
            CustomEmoji("square_off","square_off","square_off",700406581908602970),
            CustomEmoji("square_on","square_on","square_on",700406590817435759),
            CustomEmoji("as_filter","as_filter","as_filter",707301404137750618),
            CustomEmoji("ad_filter","ad_filter","ad_filter",707300588458737746)}


def get_emoji(id_inner):
    for emoji in emojis:
        if emoji.id_inner == id_inner:
            return emoji
    raise Exception("Unknown emoji id:",id_inner)


def mention_author(ctx):
    return ctx.message.author.mention


def get_author(ctx):
    return str(ctx.message.author)


async def imageHorizontalConcat(client, file_list, discord_file_list):
    images = [Image.open(x) for x in file_list]
    widths, heights = zip(*(i.size for i in images))
    
    total_width = sum(widths)
    max_height = max(heights)
    
    new_im = Image.new('RGBA', (total_width, max_height))
    
    x_offset = 0
    for im in images:
        new_im.paste(im, (x_offset,0))
        x_offset += im.size[0]
    # convert to bytes
    imgByteArr = io.BytesIO()
    new_im.save(imgByteArr, format='PNG')
    imgByteArr.seek(0)
    discord_file_list.append(imgByteArr)


async def imageVerticalConcat(client, file_list):
    images = [Image.open(x) for x in file_list]
    widths, heights = zip(*(i.size for i in images))
    
    total_width = max(widths)
    max_height = sum(heights)
    
    new_im = Image.new('RGBA', (total_width, max_height))
    
    y_offset = 0
    for im in images:
        new_im.paste(im, (0,y_offset))
        y_offset += im.size[1]
    # convert to bytes
    imgByteArr = io.BytesIO()
    new_im.save(imgByteArr, format='PNG')
    imgByteArr.seek(0)
    return imgByteArr

async def createGSpreadJSON():
    ''' Sets up json file from environmental variables for google sheets
    '''
    try:
        my_json = os.environ.get("GSPREAD_IMANITY_JSON")
        current_json = json.loads(str(my_json))
        current_json["private_key"] = os.environ.get("GSPREAD_IMANITY_KEY").replace("\\n","\n")
        # write the outfile
        with open('./gspread.json', 'w') as outfile:
            json.dump(current_json, outfile, indent=4, sort_keys=True)
    except:
        pass
