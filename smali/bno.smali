.class public abstract Lbno;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final l:Ljava/util/regex/Pattern;


# instance fields
.field protected final a:Landroid/content/res/Resources;

.field protected final b:J

.field protected final c:J

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Z

.field protected final g:Z

.field protected final h:I

.field protected final i:I

.field protected final j:Z

.field protected final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "\\n+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbno;->l:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lbnp;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lbnp;->a(Lbnp;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    .line 43
    invoke-static {p1}, Lbnp;->b(Lbnp;)J

    move-result-wide v4

    iput-wide v4, p0, Lbno;->b:J

    .line 44
    invoke-static {p1}, Lbnp;->c(Lbnp;)J

    move-result-wide v4

    iput-wide v4, p0, Lbno;->c:J

    .line 45
    invoke-static {p1}, Lbnp;->d(Lbnp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbno;->d:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lbnp;->e(Lbnp;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbno;->e:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lbnp;->f(Lbnp;)Z

    move-result v0

    iput-boolean v0, p0, Lbno;->f:Z

    .line 48
    invoke-static {p1}, Lbnp;->g(Lbnp;)I

    move-result v0

    iput v0, p0, Lbno;->i:I

    .line 49
    iget-object v0, p0, Lbno;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbno;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->c(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lbno;->g:Z

    .line 50
    iget v0, p1, Lbnp;->a:I

    iput v0, p0, Lbno;->h:I

    .line 51
    iget-object v0, p0, Lbno;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lbno;->j:Z

    .line 52
    iget-boolean v0, p0, Lbno;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbno;->j:Z

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lbno;->k:Z

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 58
    iget v0, p0, Lbno;->i:I

    packed-switch v0, :pswitch_data_0

    .line 63
    iget v0, p0, Lbno;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lbno;->d()Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lbno;->i()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lbno;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lbno;->g()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_1
    iget v0, p0, Lbno;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 68
    invoke-virtual {p0}, Lbno;->f()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    iget v0, p0, Lbno;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 70
    invoke-virtual {p0}, Lbno;->e()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v0, p0, Lbno;->g:Z

    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {p0}, Lbno;->b()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Z)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_gif:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_gif:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 81
    sget-object v0, Lbno;->l:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lbno;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lbno;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v2, Lbkb;->dm_user_conversation_preview:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbno;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected b(Z)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_video:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_video:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(Z)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_photo:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_photo:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lbno;->k:Z

    return v0
.end method

.method protected abstract d()Ljava/lang/CharSequence;
.end method

.method protected d(Z)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_card:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_card:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    iget-boolean v0, p0, Lbno;->g:Z

    if-eqz v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lbno;->k:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_gif_with_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_gif_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    iget-boolean v0, p0, Lbno;->k:Z

    invoke-virtual {p0, v0}, Lbno;->a(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    iget-boolean v0, p0, Lbno;->g:Z

    if-eqz v0, :cond_1

    .line 118
    iget-boolean v0, p0, Lbno;->k:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_video_with_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_video_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    iget-boolean v0, p0, Lbno;->k:Z

    invoke-virtual {p0, v0}, Lbno;->b(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected g()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    iget-boolean v0, p0, Lbno;->g:Z

    if-eqz v0, :cond_1

    .line 140
    iget-boolean v0, p0, Lbno;->k:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_photo_with_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_photo_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    iget-boolean v0, p0, Lbno;->k:Z

    invoke-virtual {p0, v0}, Lbno;->c(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    iget-boolean v0, p0, Lbno;->g:Z

    if-eqz v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lbno;->k:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_user_sent_a_card_with_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lbno;->a:Landroid/content/res/Resources;

    sget v1, Lbkb;->dm_sent_a_card_with_message:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lbno;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/twitter/library/util/an;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    iget-boolean v0, p0, Lbno;->k:Z

    invoke-virtual {p0, v0}, Lbno;->d(Z)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract i()Ljava/lang/CharSequence;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lbno;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
