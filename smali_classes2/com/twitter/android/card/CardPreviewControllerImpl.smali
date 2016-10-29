.class public Lcom/twitter/android/card/CardPreviewControllerImpl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/card/p;
.implements Lcom/twitter/library/client/bf;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/card/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

.field private d:Lcom/twitter/library/card/w;

.field private e:Lclw;

.field private final f:Lclw;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/twitter/library/card/ag;

.field private j:Lcom/twitter/android/card/t;

.field private final k:I

.field private l:Lcom/twitter/android/card/q;

.field private final m:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field private final n:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/twitter/android/card/o;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->a:Ljava/lang/ref/WeakReference;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    .line 80
    sget-object v0, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->a:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    .line 81
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "card_compose_preview_fetch_delay"

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->k:I

    .line 84
    iput-object p3, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->f:Lclw;

    .line 85
    iput-object p4, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->m:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 86
    iput-boolean p5, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->n:Z

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/card/CardPreviewControllerImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Lclw;)V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    .line 163
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Landroid/app/Activity;Lclw;)Lcom/twitter/library/card/w;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    .line 169
    iput-object p1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->e:Lclw;

    .line 171
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    invoke-virtual {v0}, Lcom/twitter/library/card/w;->a()V

    .line 173
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    invoke-virtual {v0}, Lcom/twitter/library/card/w;->b()V

    .line 175
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    invoke-virtual {v1}, Lcom/twitter/library/card/w;->d()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/o;->a(Landroid/view/View;)V

    .line 179
    sget-object v0, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    .line 181
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    invoke-interface {v0}, Lcom/twitter/android/card/q;->b()V

    .line 187
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'%s\'"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 425
    const-string/jumbo v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string/jumbo v3, "\'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    :cond_0
    if-eqz p3, :cond_1

    .line 432
    const-string/jumbo v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v3, "\'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 438
    :cond_1
    const-string/jumbo v0, "CardPreview"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_2
    return-void
.end method

.method static a(Ljava/util/List;Ljava/util/List;ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    if-eqz p2, :cond_0

    .line 363
    :goto_0
    return v1

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 364
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    .line 363
    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_3
    move v0, v1

    .line 364
    goto :goto_1
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-static {p0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    sget-object v1, Lra;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 337
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "Local conversation card hit"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Lcom/twitter/android/card/o;->c()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->f:Lclw;

    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "CardPreview"

    const-string/jumbo v2, "Result (conversation card): %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "tombstone://card"

    iget-object v2, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->f:Lclw;

    invoke-direct {p0, v0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Lclw;)V

    .line 143
    :cond_3
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    invoke-virtual {v0}, Lcom/twitter/library/card/w;->c()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->d:Lcom/twitter/library/card/w;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 203
    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Lcom/twitter/android/card/o;->a()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    sget-object v2, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->e:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/twitter/android/card/q;->a(Z)V

    .line 210
    :cond_2
    return-void

    .line 208
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->i:Lcom/twitter/library/card/ag;

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "Canceling pending request"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->i:Lcom/twitter/library/card/ag;

    invoke-virtual {v0}, Lcom/twitter/library/card/ag;->b()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->i:Lcom/twitter/library/card/ag;

    .line 409
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->j:Lcom/twitter/android/card/t;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->j:Lcom/twitter/android/card/t;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/android/card/t;->a:Z

    .line 414
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->j:Lcom/twitter/android/card/t;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->j:Lcom/twitter/android/card/t;

    .line 417
    :cond_0
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    const-string/jumbo v0, "card_compose_preview_tombstone_if_not_displayed"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string/jumbo v0, "tombstone://card"

    .line 447
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/twitter/android/card/t;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Lcom/twitter/android/card/t;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/card/t;-><init>(Lcom/twitter/android/card/CardPreviewControllerImpl;Ljava/lang/String;)V

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget v2, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->k:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-object v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/library/card/ag;
    .locals 3

    .prologue
    .line 394
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 396
    new-instance v1, Lcom/twitter/library/card/ag;

    invoke-direct {v1, p1, v0, p2}, Lcom/twitter/library/card/ag;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 398
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 400
    return-object v1
.end method

.method a(Landroid/app/Activity;Lclw;)Lcom/twitter/library/card/w;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->m:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {p1, p2, v0}, Lcom/twitter/library/card/w;->a(Landroid/app/Activity;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Lcom/twitter/library/card/w;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->e:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    .line 156
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    .line 157
    const-string/jumbo v0, "tombstone://card"

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public a(Lcom/twitter/android/card/q;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    .line 272
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lcom/twitter/android/card/CardPreviewControllerImpl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 98
    const-string/jumbo v0, "Update"

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->h:Ljava/util/List;

    iget-boolean v2, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->n:Z

    invoke-static {v0, v1, p2, v2}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Ljava/util/List;Ljava/util/List;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->i()V

    .line 101
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->j()V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iput-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->h:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->f:Lclw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->f:Lclw;

    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->g()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Ljava/lang/String;)Lcom/twitter/android/card/t;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->j:Lcom/twitter/android/card/t;

    goto :goto_0

    .line 112
    :cond_2
    iput-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->h:Ljava/util/List;

    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 114
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "No URLs"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->i()V

    .line 116
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->j()V

    .line 117
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    .line 125
    :cond_3
    :goto_1
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "No request necessary"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_4
    iget-boolean v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->n:Z

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 119
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "Multiple URLs in DM Compose"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->i()V

    .line 121
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->j()V

    .line 122
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->i:Lcom/twitter/library/card/ag;

    if-eq p2, v0, :cond_1

    .line 284
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "Previous request completed, ignoring"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->i:Lcom/twitter/library/card/ag;

    .line 287
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 289
    const-string/jumbo v1, "CardPreview"

    const-string/jumbo v2, "Request complete: %d %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 290
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 289
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 293
    if-eqz v0, :cond_3

    .line 294
    invoke-interface {v0}, Lcom/twitter/android/card/o;->c()V

    .line 296
    :cond_3
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 297
    check-cast p2, Lcom/twitter/library/card/ag;

    .line 298
    invoke-virtual {p2}, Lcom/twitter/library/card/ag;->h()Lclw;

    move-result-object v0

    .line 299
    invoke-static {}, Lcjw;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    invoke-virtual {p2}, Lcom/twitter/library/card/ag;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    const-string/jumbo v1, "CardPreview"

    const-string/jumbo v2, "Canceled"

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_4
    if-nez v0, :cond_5

    .line 304
    const-string/jumbo v1, "CardPreview"

    const-string/jumbo v2, "No card"

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_5
    invoke-virtual {p2}, Lcom/twitter/library/card/ag;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 308
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    .line 309
    sget-object v0, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->a:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    goto :goto_0

    .line 310
    :cond_6
    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string/jumbo v2, "CardPreview"

    const-string/jumbo v3, "Result: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v2, "tombstone://card"

    iget-object v3, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    :cond_7
    invoke-direct {p0, v0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Lclw;)V

    goto/16 :goto_0

    .line 317
    :cond_8
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    .line 318
    sget-object v0, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->d:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    goto/16 :goto_0

    .line 321
    :cond_9
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->h()V

    .line 322
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p2}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 324
    const-string/jumbo v1, "CardPreview"

    const-string/jumbo v2, "Request failed: %d %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 325
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 324
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/twitter/android/card/s;->a:[I

    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    invoke-virtual {v1}, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 243
    const-string/jumbo v0, ""

    .line 247
    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 231
    :pswitch_1
    const-string/jumbo v0, "pending"

    goto :goto_0

    .line 234
    :pswitch_2
    const-string/jumbo v0, "attached"

    goto :goto_0

    .line 237
    :pswitch_3
    const-string/jumbo v0, "dismissed"

    goto :goto_0

    .line 240
    :pswitch_4
    const-string/jumbo v0, "no_card"

    goto :goto_0

    .line 247
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/o;

    .line 369
    if-nez v0, :cond_1

    .line 370
    const-string/jumbo v0, "CardPreview"

    const-string/jumbo v1, "View went away"

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string/jumbo v1, "CardPreview"

    const-string/jumbo v2, "Requesting"

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->i()V

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->j:Lcom/twitter/android/card/t;

    .line 380
    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 381
    if-eqz v1, :cond_0

    .line 382
    sget-object v2, Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;->b:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    iput-object v2, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->c:Lcom/twitter/android/card/CardPreviewControllerImpl$PreviewState;

    .line 383
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->g:Ljava/lang/String;

    .line 384
    invoke-virtual {p0, v1, p1}, Lcom/twitter/android/card/CardPreviewControllerImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/library/card/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->i:Lcom/twitter/library/card/ag;

    .line 385
    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->l:Lcom/twitter/android/card/q;

    invoke-interface {v1}, Lcom/twitter/android/card/q;->a()V

    .line 388
    :cond_2
    invoke-interface {v0}, Lcom/twitter/android/card/o;->b()V

    goto :goto_0
.end method

.method public d()Lclw;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->e:Lclw;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->i()V

    .line 265
    invoke-direct {p0}, Lcom/twitter/android/card/CardPreviewControllerImpl;->j()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/card/CardPreviewControllerImpl;->h:Ljava/util/List;

    .line 267
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "card_compose_preview_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
