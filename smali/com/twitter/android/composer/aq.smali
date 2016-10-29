.class Lcom/twitter/android/composer/aq;
.super Lcom/twitter/android/composer/ar;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/twitter/android/composer/aq;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ar;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 781
    iget-object v0, p0, Lcom/twitter/android/composer/aq;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v1, p0, Lcom/twitter/android/composer/aq;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/composer/aq;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v4, v4, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 786
    invoke-virtual {v4}, Lcom/twitter/android/composer/ba;->c()J

    move-result-wide v4

    .line 782
    invoke-static {v1, v2, v3, v4, v5}, Lcom/twitter/app/drafts/DraftsActivity;->a(Landroid/content/Context;ZLjava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x203

    .line 781
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 788
    return-void
.end method
