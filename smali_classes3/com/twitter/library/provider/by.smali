.class public final Lcom/twitter/library/provider/by;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static A:[Ljava/lang/String;

.field public static final a:Landroid/net/Uri;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "moments_pages_view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/by;->a:Landroid/net/Uri;

    .line 33
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/twitter/library/provider/by;->b:I

    .line 34
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/library/provider/by;->c:I

    .line 35
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/twitter/library/provider/by;->d:I

    .line 36
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/twitter/library/provider/by;->e:I

    .line 37
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/twitter/library/provider/by;->f:I

    .line 38
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/twitter/library/provider/by;->g:I

    .line 39
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    sput v0, Lcom/twitter/library/provider/by;->h:I

    .line 40
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x7

    sput v0, Lcom/twitter/library/provider/by;->i:I

    .line 41
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/twitter/library/provider/by;->j:I

    .line 42
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    sput v0, Lcom/twitter/library/provider/by;->k:I

    .line 43
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/twitter/library/provider/by;->l:I

    .line 44
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xb

    sput v0, Lcom/twitter/library/provider/by;->m:I

    .line 45
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lcom/twitter/library/provider/by;->n:I

    .line 46
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xd

    sput v0, Lcom/twitter/library/provider/by;->o:I

    .line 47
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xe

    sput v0, Lcom/twitter/library/provider/by;->p:I

    .line 48
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xf

    sput v0, Lcom/twitter/library/provider/by;->q:I

    .line 49
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    sput v0, Lcom/twitter/library/provider/by;->r:I

    .line 50
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x11

    sput v0, Lcom/twitter/library/provider/by;->s:I

    .line 51
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x12

    sput v0, Lcom/twitter/library/provider/by;->t:I

    .line 52
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x13

    sput v0, Lcom/twitter/library/provider/by;->u:I

    .line 53
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcom/twitter/library/provider/by;->v:I

    .line 54
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x15

    sput v0, Lcom/twitter/library/provider/by;->w:I

    .line 55
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x16

    sput v0, Lcom/twitter/library/provider/by;->x:I

    .line 56
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x17

    sput v0, Lcom/twitter/library/provider/by;->y:I

    .line 57
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    sput v0, Lcom/twitter/library/provider/by;->z:I

    .line 62
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    .line 63
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    sget-object v1, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget-object v2, Lcho;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->b:I

    const-string/jumbo v2, "moments_title"

    aput-object v2, v0, v1

    .line 65
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->c:I

    const-string/jumbo v2, "moments_can_subscribe"

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->d:I

    const-string/jumbo v2, "moments_is_live"

    aput-object v2, v0, v1

    .line 67
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->e:I

    const-string/jumbo v2, "moments_is_sensitive"

    aput-object v2, v0, v1

    .line 68
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->f:I

    const-string/jumbo v2, "moments_subcategory_string"

    aput-object v2, v0, v1

    .line 69
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->g:I

    const-string/jumbo v2, "moments_subcategory_favicon_url"

    aput-object v2, v0, v1

    .line 71
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->h:I

    const-string/jumbo v2, "moments_time_string"

    aput-object v2, v0, v1

    .line 72
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->i:I

    const-string/jumbo v2, "moments_duration_string"

    aput-object v2, v0, v1

    .line 73
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->j:I

    const-string/jumbo v2, "moments_is_subscribed"

    aput-object v2, v0, v1

    .line 74
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->k:I

    const-string/jumbo v2, "moments_description"

    aput-object v2, v0, v1

    .line 75
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->l:I

    const-string/jumbo v2, "moments_moment_url"

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->m:I

    const-string/jumbo v2, "moments_num_subscribers"

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->n:I

    const-string/jumbo v2, "moments_author_info"

    aput-object v2, v0, v1

    .line 78
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->o:I

    const-string/jumbo v2, "moments_promoted_content"

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->p:I

    const-string/jumbo v2, "moments_event_id"

    aput-object v2, v0, v1

    .line 80
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->q:I

    const-string/jumbo v2, "moments_event_type"

    aput-object v2, v0, v1

    .line 81
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->r:I

    const-string/jumbo v2, "moment_sports_events_value"

    aput-object v2, v0, v1

    .line 82
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->s:I

    const-string/jumbo v2, "moments_pages_moment_id"

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->t:I

    const-string/jumbo v2, "moments_pages_tweet_id"

    aput-object v2, v0, v1

    .line 84
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->u:I

    const-string/jumbo v2, "moments_pages_page_id"

    aput-object v2, v0, v1

    .line 85
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->v:I

    const-string/jumbo v2, "moments_pages_page_number"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->w:I

    const-string/jumbo v2, "moments_pages_last_read_timestamp"

    aput-object v2, v0, v1

    .line 87
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->x:I

    const-string/jumbo v2, "moments_pages_capsule_page_data"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->y:I

    const-string/jumbo v2, "tweet_flags"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, Lcom/twitter/library/provider/by;->A:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/by;->z:I

    const-string/jumbo v2, "user_friendship"

    aput-object v2, v0, v1

    .line 90
    return-void
.end method

.method public static a(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/twitter/library/provider/by;->a:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
