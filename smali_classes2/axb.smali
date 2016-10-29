.class Laxb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/media/widget/au;


# instance fields
.field final synthetic a:Lawv;


# direct methods
.method constructor <init>(Lawv;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Laxb;->a:Lawv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/media/widget/InlineComposerMediaScrollView;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Laxb;->a:Lawv;

    invoke-static {v0}, Lawv;->g(Lawv;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/TweetBox;->a(Z)V

    .line 378
    return-void
.end method
