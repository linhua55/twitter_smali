.class Lzf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzb;

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method constructor <init>(Lzb;)V
    .locals 2

    .prologue
    .line 353
    iput-object p1, p0, Lzf;->a:Lzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const-string/jumbo v0, "."

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzf;->b:Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lzf;->c:I

    .line 356
    return-void
.end method

.method private a()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 386
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lzf;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v1, p0, Lzf;->a:Lzb;

    invoke-static {v1}, Lzb;->b(Lzb;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    iget v2, p0, Lzf;->c:I

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 388
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lzf;->a:Lzb;

    invoke-static {v2}, Lzb;->c(Lzb;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lzf;->a:Lzb;

    invoke-virtual {v0}, Lzb;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzf;->a:Lzb;

    invoke-static {v0}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    iget-object v0, p0, Lzf;->a:Lzb;

    invoke-static {v0}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v0, p0, Lzf;->a:Lzb;

    invoke-static {v0}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    const v1, 0x7f130026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setTag(ILjava/lang/Object;)V

    .line 382
    :goto_0
    return-void

    .line 369
    :cond_1
    iget v0, p0, Lzf;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzf;->c:I

    .line 370
    iget-object v0, p0, Lzf;->a:Lzb;

    invoke-static {v0}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    invoke-direct {p0}, Lzf;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setDraftStatusText(Ljava/lang/CharSequence;)V

    .line 377
    iget v0, p0, Lzf;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/16 v0, 0x190

    :goto_1
    add-int/lit16 v0, v0, 0x190

    .line 380
    iget v1, p0, Lzf;->c:I

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lzf;->c:I

    .line 381
    iget-object v1, p0, Lzf;->a:Lzb;

    invoke-static {v1}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 377
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
