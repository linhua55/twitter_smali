.class Lcom/twitter/android/composer/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lwr;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/twitter/android/composer/t;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/twitter/android/composer/t;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0, p1}, Lcom/twitter/android/composer/ComposerActivity;->a(Lcom/twitter/android/composer/ComposerActivity;Ljava/lang/Runnable;)Lcom/twitter/android/composer/ar;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/twitter/android/composer/t;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->i()V

    .line 1338
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/twitter/android/composer/t;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/TweetBox;->setAlertHashtag(Z)V

    .line 1332
    iget-object v0, p0, Lcom/twitter/android/composer/t;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerActivity;->h()V

    .line 1333
    return-void
.end method
