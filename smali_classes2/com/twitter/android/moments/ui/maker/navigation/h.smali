.class public Lcom/twitter/android/moments/ui/maker/navigation/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/as;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/android/moments/ui/maker/navigation/as;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT1;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT2;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/au;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrx/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT1;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT2;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lrx/subjects/a;->q()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/h;->b:Lrx/subjects/a;

    .line 37
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/h;->a:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    .line 38
    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/maker/navigation/af;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT1;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;)",
            "Ldjj",
            "<-",
            "Lcom/twitter/android/moments/ui/maker/navigation/af",
            "<TT2;",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/i;",
            ">;+",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/j;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/maker/navigation/j;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/h;Lcom/twitter/android/moments/ui/maker/navigation/af;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/navigation/h;)Lrx/subjects/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/h;->b:Lrx/subjects/a;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/h;->a:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 44
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/af;

    .line 45
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/h;->a:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    iget-object v1, v1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    check-cast v1, Lcom/twitter/android/moments/ui/maker/navigation/af;

    .line 46
    invoke-static {v1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v2

    .line 47
    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;->a(Lcom/twitter/android/moments/ui/maker/navigation/af;)Ldjj;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/moments/ui/maker/navigation/i;

    invoke-direct {v3, p0, v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/i;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/h;Lcom/twitter/android/moments/ui/maker/navigation/af;Lcom/twitter/android/moments/ui/maker/navigation/af;)V

    .line 48
    invoke-virtual {v2, v3}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 61
    invoke-interface {v1}, Lcom/twitter/android/moments/ui/maker/navigation/af;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/h;->b:Lrx/subjects/a;

    invoke-virtual {v0}, Lrx/subjects/a;->b()Lrx/w;

    move-result-object v0

    return-object v0
.end method
