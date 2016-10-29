.class public Lcom/twitter/android/composer/by;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/Locale;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final f:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final g:Landroid/widget/TextView;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ZLandroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/twitter/android/composer/by;->a:Ljava/util/Locale;

    .line 46
    const v0, 0x7f0a01fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/by;->b:Ljava/lang/String;

    .line 47
    const v0, 0x7f0a01fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/by;->c:Ljava/lang/String;

    .line 48
    const v0, 0x7f0a01fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/by;->d:Ljava/lang/String;

    .line 49
    const v0, 0x7f1200c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/composer/by;->e:I

    .line 50
    const v0, 0x7f1200c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/composer/by;->f:I

    .line 51
    iput-object p3, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    .line 52
    iput-boolean p2, p0, Lcom/twitter/android/composer/by;->h:Z

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;J[J)Ljava/lang/CharSequence;
    .locals 13

    .prologue
    .line 76
    const v0, 0xfeff

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 77
    const v0, 0xfeff

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 78
    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 79
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v1, Lcom/twitter/android/composer/bz;

    iget v3, p0, Lcom/twitter/android/composer/by;->f:I

    iget v4, p0, Lcom/twitter/android/composer/by;->e:I

    const/4 v5, 0x0

    move-object v2, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/twitter/android/composer/bz;-><init>(Lcom/twitter/android/composer/by;IIZJ[JLcom/twitter/model/core/Tweet;)V

    .line 94
    add-int/lit8 v2, v10, 0x1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 95
    iget-object v1, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object p1, v0

    .line 98
    :cond_0
    return-object p1
.end method

.method public a(Lcom/twitter/model/core/Tweet;JZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {p1, p2, p3}, Lciz;->d(Lcom/twitter/model/core/Tweet;J)[J

    move-result-object v6

    .line 57
    array-length v3, v6

    iget-wide v4, p1, Lcom/twitter/model/core/Tweet;->o:J

    cmp-long v0, p2, v4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 58
    if-eqz p4, :cond_1

    if-le v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/composer/by;->a:Ljava/util/Locale;

    iget-object v4, p0, Lcom/twitter/android/composer/by;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 61
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/composer/by;->a(Ljava/lang/String;Lcom/twitter/model/core/Tweet;J[J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/composer/by;->h:Z

    if-nez v0, :cond_3

    .line 64
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/composer/by;->c:Ljava/lang/String;

    .line 66
    :goto_2
    iget-object v3, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/composer/by;->a:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/composer/by;->b:Ljava/lang/String;

    goto :goto_2

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/composer/by;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
