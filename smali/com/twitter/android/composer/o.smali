.class Lcom/twitter/android/composer/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1171
    iget-object v0, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v1, v1, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 1173
    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/Tristate;->a(Z)Lcom/twitter/util/Tristate;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/composer/TweetBox;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/Tristate;)V

    .line 1174
    iget-object v0, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0, v6}, Lcom/twitter/android/composer/ComposerActivity;->b(Lcom/twitter/android/composer/ComposerActivity;Z)V

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->p(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/by;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    .line 1178
    invoke-static {v1}, Lcom/twitter/android/composer/ComposerActivity;->g(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v1, v1, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    .line 1179
    invoke-virtual {v1}, Lcom/twitter/android/composer/ba;->a()Z

    move-result v1

    .line 1176
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/twitter/android/composer/by;->a(Lcom/twitter/model/core/Tweet;JZ)V

    .line 1180
    iget-object v0, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->q(Lcom/twitter/android/composer/ComposerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    const v2, 0x7f0a01f9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1183
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1180
    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/composer/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->r(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1186
    iget-object v0, p0, Lcom/twitter/android/composer/o;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->s(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1187
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1168
    check-cast p1, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/o;->a(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method
