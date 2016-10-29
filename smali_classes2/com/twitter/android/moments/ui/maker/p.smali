.class public Lcom/twitter/android/moments/ui/maker/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

.field private final b:Lcom/twitter/android/moments/ui/maker/o;

.field private final c:Laue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laue",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/moments/data/aw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Laue;Lcom/twitter/android/moments/ui/maker/viewdelegate/c;Lcom/twitter/android/moments/ui/maker/o;Lcom/twitter/android/moments/data/aw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laue",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/c;",
            "Lcom/twitter/android/moments/ui/maker/o;",
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/p;->c:Laue;

    .line 65
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

    .line 66
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/p;->b:Lcom/twitter/android/moments/ui/maker/o;

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/p;->b:Lcom/twitter/android/moments/ui/maker/o;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/r;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/r;-><init>(Lcom/twitter/android/moments/ui/maker/p;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->a(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/p;->d:Lcom/twitter/android/moments/data/aw;

    .line 75
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lcom/twitter/app/common/inject/o;Laeb;)Lcom/twitter/android/moments/ui/maker/p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/moments/ui/maker/df;",
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;",
            "Lcom/twitter/app/common/inject/o;",
            "Laeb;",
            ")",
            "Lcom/twitter/android/moments/ui/maker/p;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/ui/maker/q;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/q;-><init>(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lcom/twitter/app/common/inject/o;Laeb;)V

    .line 47
    new-instance v1, Lcom/twitter/android/moments/ui/maker/d;

    .line 48
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->values()[Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/ui/maker/d;-><init>(Ljava/util/List;)V

    .line 49
    new-instance v2, Lcom/twitter/android/moments/ui/maker/o;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/twitter/android/moments/ui/maker/o;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/twitter/util/object/e;)V

    .line 53
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

    move-result-object v0

    .line 54
    new-instance v1, Laue;

    new-instance v3, Lcom/twitter/android/moments/ui/maker/dq;

    invoke-direct {v3}, Lcom/twitter/android/moments/ui/maker/dq;-><init>()V

    invoke-direct {v1, p0, v3}, Laue;-><init>(Landroid/app/Activity;Laun;)V

    .line 56
    new-instance v3, Lcom/twitter/android/moments/ui/maker/p;

    invoke-direct {v3, v1, v0, v2, p3}, Lcom/twitter/android/moments/ui/maker/p;-><init>(Laue;Lcom/twitter/android/moments/ui/maker/viewdelegate/c;Lcom/twitter/android/moments/ui/maker/o;Lcom/twitter/android/moments/data/aw;)V

    return-object v3
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/p;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/p;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/p;->c:Laue;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/p;->d:Lcom/twitter/android/moments/data/aw;

    .line 83
    invoke-virtual {v2}, Lcom/twitter/android/moments/data/aw;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Laue;->a(ILjava/lang/Object;)V

    .line 84
    return-void
.end method


# virtual methods
.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/p;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/p;->b:Lcom/twitter/android/moments/ui/maker/o;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/o;->a()V

    .line 94
    return-void
.end method
