.class Lcom/twitter/android/va;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/y;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment2;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment2;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->c()V

    .line 1178
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/android/TweetFragment2;->a:Z

    .line 1179
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->n(Lcom/twitter/android/TweetFragment2;)V

    .line 1180
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/twitter/android/va;->d()V

    .line 1153
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-nez v1, :cond_0

    .line 1158
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    .line 1159
    iget-object v1, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->p(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    .line 1160
    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->o(Lcom/twitter/android/TweetFragment2;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->c(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1159
    invoke-static {v2, v3, v0, v4, v5}, Lblv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)Lblv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/va;->d()V

    .line 1163
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1166
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v1}, Lcom/twitter/android/TweetFragment2;->q(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:sensitive_media_interstitial::dispute_media:click"

    aput-object v2, v1, v4

    .line 1167
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1166
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1169
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0678

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1171
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment2;->b:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetDetailView;->g()V

    .line 1172
    iget-object v0, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment2;->t(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbrf;

    iget-object v2, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v2}, Lcom/twitter/android/TweetFragment2;->r(Lcom/twitter/android/TweetFragment2;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    invoke-static {v3}, Lcom/twitter/android/TweetFragment2;->s(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/va;->a:Lcom/twitter/android/TweetFragment2;

    .line 1173
    invoke-static {v4}, Lcom/twitter/android/TweetFragment2;->d(Lcom/twitter/android/TweetFragment2;)Lcom/twitter/model/core/Tweet;

    move-result-object v4

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->C:J

    const-string/jumbo v6, "dispute_media"

    invoke-direct/range {v1 .. v6}, Lbrf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 1172
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1174
    return-void
.end method
