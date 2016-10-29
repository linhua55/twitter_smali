.class Lcom/twitter/android/composer/ak;
.super Lcom/twitter/android/composer/ar;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3472
    iput-object p1, p0, Lcom/twitter/android/composer/ak;->b:Lcom/twitter/android/composer/ComposerActivity;

    iput-object p2, p0, Lcom/twitter/android/composer/ak;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ar;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/twitter/android/composer/ak;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3476
    return-void
.end method
