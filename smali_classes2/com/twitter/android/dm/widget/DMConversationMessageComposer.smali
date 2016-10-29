.class public Lcom/twitter/android/dm/widget/DMConversationMessageComposer;
.super Lcom/twitter/android/dm/widget/DMMessageComposer;
.source "Twttr"


# instance fields
.field private final d:Lcom/twitter/android/card/p;

.field private final e:Lcom/twitter/android/dm/widget/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/dm/widget/DMMessageComposer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {}, Lbnv;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const v0, 0x7f1301d0

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/card/CardPreviewView;

    .line 37
    invoke-static {}, Lcom/twitter/android/card/r;->a()Lcom/twitter/android/card/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->f:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/card/r;->a(Landroid/app/Activity;Lcom/twitter/android/card/o;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)Lcom/twitter/android/card/p;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    .line 39
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    invoke-virtual {v2, v0}, Lcom/twitter/android/card/CardPreviewView;->setController(Lcom/twitter/android/card/p;)V

    .line 40
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    new-instance v1, Lcom/twitter/android/dm/widget/d;

    invoke-direct {v1, p0, v3}, Lcom/twitter/android/dm/widget/d;-><init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;Lcom/twitter/android/dm/widget/b;)V

    invoke-interface {v0, v1}, Lcom/twitter/android/card/p;->a(Lcom/twitter/android/card/q;)V

    .line 41
    new-instance v0, Lcom/twitter/android/dm/widget/c;

    .line 42
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/twitter/android/dm/widget/c;-><init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->e:Lcom/twitter/android/dm/widget/c;

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0681

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setHintText(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    new-instance v1, Lcom/twitter/android/dm/widget/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/dm/widget/b;-><init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->setTextWatcher(Landroid/text/TextWatcher;)V

    .line 61
    return-void

    .line 44
    :cond_0
    iput-object v3, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    .line 45
    iput-object v3, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->e:Lcom/twitter/android/dm/widget/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/dm/widget/c;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->e:Lcom/twitter/android/dm/widget/c;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tombstone://card"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0, p2}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/String;[I)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->m()V

    .line 74
    return-void
.end method

.method public getCardUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->d:Lcom/twitter/android/card/p;

    invoke-interface {v0}, Lcom/twitter/android/card/p;->b()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v2}, Lcom/twitter/android/composer/TweetBox;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAssociation(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->e:Lcom/twitter/android/dm/widget/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->e:Lcom/twitter/android/dm/widget/c;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/widget/c;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 111
    :cond_0
    return-void
.end method
