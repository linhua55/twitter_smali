.class Lcom/twitter/android/composer/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/card/pollcompose/p;


# instance fields
.field final synthetic a:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    iget-object v1, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v1}, Lcom/twitter/android/composer/ComposerActivity;->u(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/card/pollcompose/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/card/pollcompose/o;->e()Lclp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->a(Lclp;)V

    .line 1288
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->h()V

    .line 1289
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->t(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1290
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->v(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1291
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/composer/ComposerActivity;->b(Lcom/twitter/android/composer/ComposerActivity;Z)V

    .line 1292
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/composer/TweetBox;->a(Ljava/lang/CharSequence;I)V

    .line 1293
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->w(Lcom/twitter/android/composer/ComposerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1294
    return-void
.end method

.method public a(Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/model/drafts/DraftAttachment;

    .line 1317
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    iget-object v1, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v1}, Lcom/twitter/android/composer/ComposerActivity;->u(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/card/pollcompose/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/card/pollcompose/o;->e()Lclp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->a(Lclp;)V

    .line 1299
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->v(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1300
    return-void
.end method

.method public b(Lcom/twitter/model/drafts/DraftAttachment;)V
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    iget-object v1, p1, Lcom/twitter/model/drafts/DraftAttachment;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->a(Landroid/net/Uri;)Lcom/twitter/model/drafts/DraftAttachment;

    .line 1322
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->a(Lclp;)V

    .line 1305
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    iget-object v0, v0, Lcom/twitter/android/composer/ComposerActivity;->a:Lcom/twitter/android/composer/ba;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ba;->a(I)V

    .line 1306
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->i()V

    .line 1307
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->x(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1308
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->t(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1309
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->v(Lcom/twitter/android/composer/ComposerActivity;)V

    .line 1310
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->w(Lcom/twitter/android/composer/ComposerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1311
    iget-object v0, p0, Lcom/twitter/android/composer/s;->a:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->d(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/composer/TweetBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/TweetBox;->requestFocus()Z

    .line 1312
    return-void
.end method
