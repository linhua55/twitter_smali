.class Lcom/twitter/android/composer/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/e;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/twitter/android/composer/f;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/twitter/android/composer/f;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, p3}, Lcom/twitter/android/composer/ComposerActivity;->a(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/twitter/android/composer/f;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->h(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/geotag/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/geotag/a;->g()V

    .line 892
    return-void
.end method
