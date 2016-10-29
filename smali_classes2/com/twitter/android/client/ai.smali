.class Lcom/twitter/android/client/ai;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Z

.field public b:Landroid/content/Intent;

.field public c:Landroid/content/Intent;

.field public d:Z

.field public e:Landroid/content/Intent;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-boolean v1, p0, Lcom/twitter/android/client/ai;->a:Z

    .line 887
    iput-object v0, p0, Lcom/twitter/android/client/ai;->b:Landroid/content/Intent;

    .line 893
    iput-object v0, p0, Lcom/twitter/android/client/ai;->c:Landroid/content/Intent;

    .line 904
    iput-boolean v1, p0, Lcom/twitter/android/client/ai;->d:Z

    .line 911
    iput-object v0, p0, Lcom/twitter/android/client/ai;->e:Landroid/content/Intent;

    .line 916
    iput-boolean v1, p0, Lcom/twitter/android/client/ai;->f:Z

    .line 921
    iput-object v0, p0, Lcom/twitter/android/client/ai;->g:Ljava/lang/String;

    .line 926
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/client/ai;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/client/z;)V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/twitter/android/client/ai;-><init>()V

    return-void
.end method

.method static a(JJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 932
    new-instance v0, Lcom/twitter/android/client/ag;

    invoke-direct {v0}, Lcom/twitter/android/client/ag;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/twitter/android/client/ag;->a(J)Lcom/twitter/android/client/ag;

    move-result-object v0

    const-string/jumbo v1, "draftId"

    invoke-virtual {v0, v1, p2, p3}, Lcom/twitter/android/client/ag;->a(Ljava/lang/String;J)Lcom/twitter/android/client/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/ag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
