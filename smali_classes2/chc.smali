.class public interface abstract Lchc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "favorited"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "in_r_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "in_r_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "in_r_screen_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "retweet_count"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "favorite_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "lang"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "supplemental_language"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "view_count"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "place_data"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "quoted_tweet_data"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "quoted_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "retweeted"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "entities"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "withheld_scope"

    aput-object v2, v0, v1

    sput-object v0, Lchc;->a:[Ljava/lang/String;

    return-void
.end method
