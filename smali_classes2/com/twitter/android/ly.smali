.class Lcom/twitter/android/ly;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Z

.field final synthetic d:Lcom/twitter/library/scribe/TwitterScribeLog;

.field final synthetic e:Lcom/twitter/android/lx;


# direct methods
.method constructor <init>(Lcom/twitter/android/lx;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;ZLcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/ly;->e:Lcom/twitter/android/lx;

    iput-object p2, p0, Lcom/twitter/android/ly;->a:Lcom/twitter/library/client/Session;

    iput-object p3, p0, Lcom/twitter/android/ly;->b:Lcom/twitter/model/core/Tweet;

    iput-boolean p4, p0, Lcom/twitter/android/ly;->c:Z

    iput-object p5, p0, Lcom/twitter/android/ly;->d:Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 7

    .prologue
    .line 54
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/ly;->e:Lcom/twitter/android/lx;

    invoke-static {v0}, Lcom/twitter/android/lx;->c(Lcom/twitter/android/lx;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbth;

    iget-object v2, p0, Lcom/twitter/android/ly;->e:Lcom/twitter/android/lx;

    .line 56
    invoke-static {v2}, Lcom/twitter/android/lx;->a(Lcom/twitter/android/lx;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/ly;->a:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/ly;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->C:J

    iget-boolean v6, p0, Lcom/twitter/android/ly;->c:Z

    invoke-direct/range {v1 .. v6}, Lbth;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZ)V

    new-instance v2, Lcom/twitter/android/lz;

    invoke-direct {v2, p0}, Lcom/twitter/android/lz;-><init>(Lcom/twitter/android/ly;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/ly;->d:Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 68
    :cond_0
    return-void
.end method
