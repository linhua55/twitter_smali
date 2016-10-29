.class Lcom/twitter/android/composer/b;
.super Lcom/twitter/android/composer/ar;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/twitter/android/composer/b;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0, p1}, Lcom/twitter/android/composer/ar;-><init>(Lcom/twitter/android/composer/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Lcom/twitter/android/composer/b;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-virtual {v0, v1, v1}, Lcom/twitter/android/composer/ComposerActivity;->a(IZ)V

    .line 802
    iget-object v0, p0, Lcom/twitter/android/composer/b;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/16 v1, 0x208

    sget-object v2, Lcom/twitter/android/composer/ComposerType;->a:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/util/v;->a(Landroid/app/Activity;ILcom/twitter/android/composer/ComposerType;)V

    .line 804
    return-void
.end method
