.class public Lcom/twitter/android/moments/data/maker/r;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 45
    new-instance v0, Lae;

    invoke-direct {v0}, Lae;-><init>()V

    .line 46
    const-string/jumbo v1, "moment_id"

    invoke-virtual {v0, v1, p2, p3}, Lae;->a(Ljava/lang/String;J)V

    .line 47
    new-instance v1, Lcom/evernote/android/job/m;

    invoke-direct {v1, p1}, Lcom/evernote/android/job/m;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/evernote/android/job/JobRequest$NetworkType;->b:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 48
    invoke-virtual {v1, v2}, Lcom/evernote/android/job/m;->a(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/m;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/evernote/android/job/m;->a(JJ)Lcom/evernote/android/job/m;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/evernote/android/job/m;->a(Lae;)Lcom/evernote/android/job/m;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/evernote/android/job/m;->a()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->t()I

    .line 53
    return-void
.end method
