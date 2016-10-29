.class public Lcom/twitter/android/moments/ui/maker/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

.field private final b:Lcom/twitter/android/moments/ui/maker/cq;

.field private final c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

.field private final d:Laeb;

.field private final e:Lasp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasp",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            "Lcom/twitter/android/moments/ui/maker/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/res/Resources;

.field private g:Lrx/ap;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/b;Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;Lcom/twitter/android/moments/ui/maker/cq;Laeb;Lasp;Landroid/content/res/Resources;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/b;",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            "Lcom/twitter/android/moments/ui/maker/cq;",
            "Laeb;",
            "Lasp",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            "Lcom/twitter/android/moments/ui/maker/e;",
            ">;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/j;->f:Landroid/content/res/Resources;

    .line 75
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    .line 76
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/j;->b:Lcom/twitter/android/moments/ui/maker/cq;

    .line 77
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/j;->c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    .line 78
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/j;->d:Laeb;

    .line 79
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/j;->e:Lasp;

    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/j;->e:Lasp;

    invoke-virtual {v1}, Lasp;->b()Laso;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/k;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/k;-><init>(Lcom/twitter/android/moments/ui/maker/j;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->a(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lcom/twitter/app/common/inject/o;Laeb;)Lcom/twitter/android/moments/ui/maker/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            "Landroid/content/Context;",
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
            "Lcom/twitter/android/moments/ui/maker/j;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/twitter/android/moments/ui/maker/n;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/twitter/android/moments/ui/maker/n;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;)V

    .line 55
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/cq;->a()Lcom/twitter/android/moments/ui/maker/cq;

    move-result-object v3

    .line 56
    new-instance v5, Lasp;

    new-instance v1, Lass;

    invoke-direct {v1, p5, v3, v0}, Lass;-><init>(Lcom/twitter/app/common/inject/o;Lasr;Lasn;)V

    invoke-direct {v5, v1}, Lasp;-><init>(Laso;)V

    .line 60
    new-instance v0, Lcom/twitter/android/moments/ui/maker/j;

    .line 61
    invoke-static {p1, p2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, p0

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/j;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/b;Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;Lcom/twitter/android/moments/ui/maker/cq;Laeb;Lasp;Landroid/content/res/Resources;)V

    .line 60
    return-object v0
.end method

.method private a(Lcom/twitter/library/api/moments/maker/RecommendationType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/twitter/android/moments/ui/maker/m;->a:[I

    invoke-virtual {p1}, Lcom/twitter/library/api/moments/maker/RecommendationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->f:Landroid/content/res/Resources;

    const v1, 0x7f0a04ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->f:Landroid/content/res/Resources;

    const v1, 0x7f0a0502

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->f:Landroid/content/res/Resources;

    const v1, 0x7f0a0500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->f:Landroid/content/res/Resources;

    const v1, 0x7f0a0501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/j;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/j;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/j;->c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->b()Lcom/twitter/library/api/moments/maker/RecommendationType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/maker/j;->a(Lcom/twitter/library/api/moments/maker/RecommendationType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->a(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->c()V

    .line 114
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->b:Lcom/twitter/android/moments/ui/maker/cq;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/cq;->a(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->e:Lasp;

    invoke-virtual {v0}, Lasp;->a()V

    goto :goto_0
.end method


# virtual methods
.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->g:Lrx/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->g:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/b;->b()V

    .line 100
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->d:Laeb;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/j;->c:Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->b()Lcom/twitter/library/api/moments/maker/RecommendationType;

    move-result-object v1

    invoke-interface {v0, v1}, Laeb;->a(Lcom/twitter/library/api/moments/maker/RecommendationType;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/l;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/l;-><init>(Lcom/twitter/android/moments/ui/maker/j;)V

    .line 101
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->g:Lrx/ap;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/j;->g:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 139
    return-void
.end method
