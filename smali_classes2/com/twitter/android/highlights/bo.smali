.class public Lcom/twitter/android/highlights/bo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/highlights/ar;


# static fields
.field private static a:Z

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/twitter/android/highlights/bo;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/view/m;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 73
    sget-boolean v0, Lcom/twitter/android/highlights/bo;->a:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x7f1200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/twitter/android/highlights/bo;->b:I

    .line 76
    const v1, 0x7f1200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/twitter/android/highlights/bo;->c:I

    .line 77
    sput-boolean v3, Lcom/twitter/android/highlights/bo;->a:Z

    .line 81
    :cond_0
    if-eqz p2, :cond_2

    .line 82
    invoke-static {p1}, Lcom/twitter/library/provider/aq;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Lcom/twitter/library/provider/aq;->e(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Lcom/twitter/library/provider/aq;->c(Z)Lcom/twitter/library/provider/aq;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v0

    .line 92
    :goto_0
    iget-object v1, v0, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/model/core/i;->b:Lcom/twitter/model/core/bm;

    .line 93
    invoke-virtual {v1, v0}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p3}, Lcom/twitter/library/view/o;->a(Lcom/twitter/library/view/m;)Lcom/twitter/library/view/o;

    move-result-object v0

    sget v1, Lcom/twitter/android/highlights/bo;->b:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->a(I)Lcom/twitter/library/view/o;

    move-result-object v0

    sget v1, Lcom/twitter/android/highlights/bo;->c:I

    .line 96
    invoke-virtual {v0, v1}, Lcom/twitter/library/view/o;->b(I)Lcom/twitter/library/view/o;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/twitter/library/view/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/core/bm;->f:Lcom/twitter/model/core/j;

    invoke-static {p0, v1, v0, v3}, Lcom/twitter/library/view/d;->a(Landroid/content/Context;Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 102
    :cond_1
    return-object v0

    .line 90
    :cond_2
    new-instance v0, Lcom/twitter/model/core/i;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/core/i;-><init>(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f04014e

    return v0
.end method

.method public a(Lcom/twitter/android/highlights/as;Lcom/twitter/android/highlights/at;Landroid/content/Context;Lcom/twitter/android/highlights/ak;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 48
    check-cast p1, Lcom/twitter/android/highlights/bp;

    .line 49
    check-cast p2, Lcom/twitter/android/highlights/bq;

    .line 50
    iget-object v0, p2, Lcom/twitter/android/highlights/bq;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p2, Lcom/twitter/android/highlights/bq;->h:Landroid/view/View;

    iget-object v0, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    iget-boolean v0, v0, Lcom/twitter/model/core/Tweet;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p2, Lcom/twitter/android/highlights/bq;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    .line 53
    invoke-static {p3, v1}, Lcom/twitter/android/highlights/au;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p2, Lcom/twitter/android/highlights/bq;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p3, p4}, Lcom/twitter/android/highlights/bp;->a(Landroid/content/Context;Lcom/twitter/library/view/m;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    iget-object v1, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    iget v1, v1, Lcom/twitter/model/core/Tweet;->i:I

    .line 58
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    iget-object v1, v1, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 61
    iget-object v1, p2, Lcom/twitter/android/highlights/bq;->f:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 62
    iget-object v1, p2, Lcom/twitter/android/highlights/bq;->f:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v1, p2, Lcom/twitter/android/highlights/bq;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lcom/twitter/android/highlights/ao;

    iget-object v2, p1, Lcom/twitter/android/highlights/bp;->b:Lcom/twitter/model/core/Tweet;

    iget-object v3, p2, Lcom/twitter/android/highlights/bq;->y:Lcom/twitter/library/widget/CompoundDrawableAnimButton;

    iget-object v4, p2, Lcom/twitter/android/highlights/bq;->z:Lcom/twitter/library/widget/CompoundDrawableAnimButton;

    .line 66
    invoke-static {p1}, Lcom/twitter/android/highlights/StoryScribeItem;->a(Lcom/twitter/android/highlights/as;)Lcom/twitter/android/highlights/StoryScribeItem;

    move-result-object v5

    move-object v1, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/highlights/ao;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/CompoundDrawableAnimButton;Lcom/twitter/library/widget/CompoundDrawableAnimButton;Lcom/twitter/library/scribe/ScribeItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p2, Lcom/twitter/android/highlights/bq;->y:Lcom/twitter/library/widget/CompoundDrawableAnimButton;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/CompoundDrawableAnimButton;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p2, Lcom/twitter/android/highlights/bq;->z:Lcom/twitter/library/widget/CompoundDrawableAnimButton;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/CompoundDrawableAnimButton;->setTag(Ljava/lang/Object;)V

    .line 69
    return-void

    .line 51
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/highlights/at;Landroid/view/LayoutInflater;Lcom/twitter/android/highlights/ak;)V
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/twitter/android/highlights/bq;

    .line 40
    iget-object v0, p1, Lcom/twitter/android/highlights/bq;->f:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p3}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p1, Lcom/twitter/android/highlights/bq;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0a040c

    return v0
.end method
