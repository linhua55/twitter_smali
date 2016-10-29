.class public Lcom/twitter/android/moments/ui/fullscreen/ar;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/client/bo;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/ai;

.field private final c:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/client/bo;Lcom/twitter/android/moments/ui/fullscreen/ai;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->a:Lcom/twitter/android/client/bo;

    .line 42
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->b:Lcom/twitter/android/moments/ui/fullscreen/ai;

    .line 43
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->c:Landroid/support/v4/app/FragmentActivity;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/ar;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->c:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/twitter/android/moments/ui/fullscreen/ar;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/ar;

    invoke-static {p0}, Lcom/twitter/android/client/bo;->a(Landroid/app/Activity;)Lcom/twitter/android/client/bo;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ai;

    invoke-direct {v2}, Lcom/twitter/android/moments/ui/fullscreen/ai;-><init>()V

    invoke-direct {v0, v1, v2, p0}, Lcom/twitter/android/moments/ui/fullscreen/ar;-><init>(Lcom/twitter/android/client/bo;Lcom/twitter/android/moments/ui/fullscreen/ai;Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/ar;)Lcom/twitter/android/moments/ui/fullscreen/ai;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->b:Lcom/twitter/android/moments/ui/fullscreen/ai;

    return-object v0
.end method

.method static synthetic b(Laev;Lcom/twitter/model/moments/a;)Lrx/w;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ar;->c(Laev;Lcom/twitter/model/moments/a;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/ar;)Lcom/twitter/android/client/bo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->a:Lcom/twitter/android/client/bo;

    return-object v0
.end method

.method private static c(Laev;Lcom/twitter/model/moments/a;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laev;",
            "Lcom/twitter/model/moments/a;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-wide v0, p1, Lcom/twitter/model/moments/a;->b:J

    invoke-virtual {p0, v0, v1}, Laev;->a(J)Lrx/o;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v1

    invoke-static {v0, v1}, Ldcn;->a(Lrx/o;Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/at;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/fullscreen/at;-><init>()V

    .line 93
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/twitter/model/moments/d;)Lden;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/d;",
            ")",
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/BaseDialogFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/av;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/av;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ar;Lcom/twitter/model/moments/d;)V

    return-object v0
.end method

.method a()Ldjj;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/lang/Boolean;",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/au;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/au;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ar;)V

    return-object v0
.end method

.method a(Laev;)Ldjj;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laev;",
            ")",
            "Ldjj",
            "<",
            "Lcom/twitter/model/moments/a;",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/as;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/as;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ar;Laev;)V

    return-object v0
.end method

.method public a(Laev;Lcom/twitter/model/moments/a;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laev;",
            "Lcom/twitter/model/moments/a;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p2}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    .line 61
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a(Laev;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/d;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a(Lcom/twitter/model/moments/d;)Lden;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ar;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/util/bl;->a(Lden;Landroid/support/v4/app/FragmentManager;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/aw;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/aw;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ar;Lcom/twitter/model/moments/d;)V

    .line 148
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjf;)Lrx/ap;

    .line 157
    return-void
.end method
