.class public Ltv/periscope/android/util/s;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private static final b:I

.field private static final c:I

.field private static g:Ltv/periscope/android/util/s;


# instance fields
.field private d:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private e:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private f:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ltv/periscope/android/library/i;->ps__participant_1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Ltv/periscope/android/library/i;->ps__participant_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Ltv/periscope/android/library/i;->ps__participant_3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Ltv/periscope/android/library/i;->ps__participant_4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Ltv/periscope/android/library/i;->ps__participant_5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Ltv/periscope/android/library/i;->ps__participant_6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Ltv/periscope/android/library/i;->ps__participant_7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Ltv/periscope/android/library/i;->ps__participant_8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Ltv/periscope/android/library/i;->ps__participant_9:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Ltv/periscope/android/library/i;->ps__participant_10:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Ltv/periscope/android/library/i;->ps__participant_11:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Ltv/periscope/android/library/i;->ps__participant_12:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Ltv/periscope/android/library/i;->ps__participant_13:I

    aput v2, v0, v1

    sput-object v0, Ltv/periscope/android/util/s;->a:[I

    .line 36
    sget v0, Ltv/periscope/android/library/i;->ps__dark_grey:I

    sput v0, Ltv/periscope/android/util/s;->b:I

    .line 37
    sget v0, Ltv/periscope/android/library/i;->ps__participant_replay:I

    sput v0, Ltv/periscope/android/util/s;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Ltv/periscope/android/util/s;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Ltv/periscope/android/util/s;->d:[I

    .line 50
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ltv/periscope/android/util/s;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Ltv/periscope/android/util/s;->d:[I

    sget-object v2, Ltv/periscope/android/util/s;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget v0, Ltv/periscope/android/util/s;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/util/s;->e:I

    .line 54
    sget v0, Ltv/periscope/android/util/s;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/util/s;->f:I

    .line 55
    return-void
.end method

.method public static a(I)I
    .locals 3
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 79
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 80
    sget v0, Ltv/periscope/android/util/s;->c:I

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    if-nez p0, :cond_1

    .line 82
    sget v0, Ltv/periscope/android/util/s;->b:I

    goto :goto_0

    .line 84
    :cond_1
    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    sget-object v1, Ltv/periscope/android/util/s;->a:[I

    sget-object v2, Ltv/periscope/android/util/s;->a:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    aget v0, v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .locals 3

    .prologue
    .line 61
    sget-object v0, Ltv/periscope/android/util/s;->g:Ltv/periscope/android/util/s;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ltv/periscope/android/util/s;

    invoke-direct {v0, p0}, Ltv/periscope/android/util/s;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Ltv/periscope/android/util/s;->g:Ltv/periscope/android/util/s;

    .line 64
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 65
    sget-object v0, Ltv/periscope/android/util/s;->g:Ltv/periscope/android/util/s;

    iget v0, v0, Ltv/periscope/android/util/s;->f:I

    .line 70
    :goto_0
    return v0

    .line 66
    :cond_1
    if-nez p1, :cond_2

    .line 67
    sget-object v0, Ltv/periscope/android/util/s;->g:Ltv/periscope/android/util/s;

    iget v0, v0, Ltv/periscope/android/util/s;->e:I

    goto :goto_0

    .line 69
    :cond_2
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    sget-object v1, Ltv/periscope/android/util/s;->g:Ltv/periscope/android/util/s;

    iget-object v1, v1, Ltv/periscope/android/util/s;->d:[I

    sget-object v2, Ltv/periscope/android/util/s;->g:Ltv/periscope/android/util/s;

    iget-object v2, v2, Ltv/periscope/android/util/s;->d:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    aget v0, v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;ILjava/lang/String;I)Ltv/periscope/android/view/bc;
    .locals 8
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-static {p2}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 97
    :goto_0
    new-instance v0, Ltv/periscope/android/view/bc;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    sget v6, Ltv/periscope/android/library/i;->ps__white:I

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/view/bc;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/shapes/Shape;IIIILjava/lang/CharSequence;)V

    return-object v0

    .line 96
    :cond_0
    const-string/jumbo v7, ""

    goto :goto_0
.end method

.method public static b(Landroid/content/res/Resources;I)I
    .locals 2

    .prologue
    .line 90
    invoke-static {p0, p1}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v0

    const v1, -0x5f000001

    and-int/2addr v0, v1

    return v0
.end method
