.class Lcom/twitter/android/composer/cd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/TweetBox;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/TweetBox;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    iget-boolean v0, v0, Lcom/twitter/android/composer/TweetBox;->c:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twitter/android/composer/TweetBox;->c:Z

    .line 176
    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->k()V

    .line 179
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    iget-boolean v0, v0, Lcom/twitter/android/composer/TweetBox;->d:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    invoke-static {v0}, Lcom/twitter/android/composer/TweetBox;->a(Lcom/twitter/android/composer/TweetBox;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    iget-object v0, v0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/twitter/android/composer/cd;->a:Lcom/twitter/android/composer/TweetBox;

    iget-object v0, v0, Lcom/twitter/android/composer/TweetBox;->b:Lcom/twitter/android/composer/cl;

    invoke-interface {v0, p2}, Lcom/twitter/android/composer/cl;->a(Z)V

    .line 186
    :cond_2
    return-void
.end method
