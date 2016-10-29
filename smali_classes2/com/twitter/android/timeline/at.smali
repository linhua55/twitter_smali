.class public Lcom/twitter/android/timeline/at;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/widget/l",
        "<",
        "Lcom/twitter/android/timeline/as;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final c:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/app/Activity;",
            "Laib;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/app/Activity;",
            "Laik;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/ay;",
            "Lcom/twitter/android/moments/viewmodels/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/android/timeline/ay;

.field private final g:Lcom/twitter/android/timeline/aw;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/util/object/c;Lcom/twitter/util/object/c;Lcom/twitter/android/moments/viewmodels/am;Lcom/twitter/android/timeline/ay;Lcom/twitter/android/timeline/aw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/app/Activity;",
            "Laib;",
            ">;",
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/app/Activity;",
            "Laik;",
            ">;",
            "Lcom/twitter/android/moments/viewmodels/am;",
            "Lcom/twitter/android/timeline/ay;",
            "Lcom/twitter/android/timeline/aw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/twitter/android/timeline/at;->a:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/twitter/android/timeline/at;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 64
    iput-object p3, p0, Lcom/twitter/android/timeline/at;->c:Lcom/twitter/util/object/c;

    .line 65
    iput-object p4, p0, Lcom/twitter/android/timeline/at;->d:Lcom/twitter/util/object/c;

    .line 66
    iput-object p5, p0, Lcom/twitter/android/timeline/at;->e:Lcom/twitter/util/object/c;

    .line 67
    iput-object p6, p0, Lcom/twitter/android/timeline/at;->f:Lcom/twitter/android/timeline/ay;

    .line 68
    iput-object p7, p0, Lcom/twitter/android/timeline/at;->g:Lcom/twitter/android/timeline/aw;

    .line 69
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/android/widget/ex;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/twitter/android/timeline/av;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/twitter/android/timeline/av;-><init>(Lcom/twitter/android/timeline/at;Lcom/twitter/android/widget/ex;ILandroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/client/bk;Lcom/twitter/android/timeline/ay;)Lcom/twitter/android/timeline/at;
    .locals 8

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/android/timeline/at;

    .line 48
    invoke-static {p2}, Laif;->a(Lcom/twitter/library/client/bk;)Laif;

    move-result-object v3

    sget-object v4, Laik;->a:Lcom/twitter/util/object/c;

    new-instance v5, Lcom/twitter/android/moments/viewmodels/am;

    invoke-direct {v5}, Lcom/twitter/android/moments/viewmodels/am;-><init>()V

    new-instance v7, Lcom/twitter/android/timeline/aw;

    invoke-direct {v7}, Lcom/twitter/android/timeline/aw;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/at;-><init>(Landroid/app/Activity;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/util/object/c;Lcom/twitter/util/object/c;Lcom/twitter/android/moments/viewmodels/am;Lcom/twitter/android/timeline/ay;Lcom/twitter/android/timeline/aw;)V

    .line 46
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/timeline/at;)Lcom/twitter/android/timeline/ay;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/timeline/at;->f:Lcom/twitter/android/timeline/ay;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/timeline/at;)Lcom/twitter/android/timeline/aw;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/timeline/at;->g:Lcom/twitter/android/timeline/aw;

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/twitter/android/timeline/as;I)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/twitter/android/timeline/au;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/twitter/android/timeline/au;-><init>(Lcom/twitter/android/timeline/at;Lcom/twitter/android/timeline/as;ILandroid/app/Activity;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/twitter/android/timeline/as;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/twitter/android/widget/MomentsCardCarouselItemView;

    invoke-direct {v0, p1}, Lcom/twitter/android/widget/MomentsCardCarouselItemView;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, v0, p2, p3}, Lcom/twitter/android/timeline/at;->a(Landroid/view/View;Lcom/twitter/android/timeline/as;I)V

    .line 76
    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    check-cast p2, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/timeline/at;->a(Landroid/content/Context;Lcom/twitter/android/timeline/as;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/twitter/android/timeline/as;I)V
    .locals 6

    .prologue
    .line 81
    instance-of v0, p1, Lcom/twitter/android/widget/MomentsCardCarouselItemView;

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 82
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/MomentsCardCarouselItemView;

    .line 83
    iget-object v1, p0, Lcom/twitter/android/timeline/at;->e:Lcom/twitter/util/object/c;

    iget-object v2, p2, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    invoke-interface {v1, v2}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/moments/viewmodels/u;

    .line 84
    invoke-virtual {v0}, Lcom/twitter/android/widget/MomentsCardCarouselItemView;->getBoundMomentId()J

    move-result-wide v2

    .line 85
    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/u;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    instance-of v2, p2, Lcom/twitter/android/widget/ex;

    if-eqz v2, :cond_1

    .line 92
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/widget/ex;

    .line 93
    iget-object v3, p0, Lcom/twitter/android/timeline/at;->d:Lcom/twitter/util/object/c;

    iget-object v4, p0, Lcom/twitter/android/timeline/at;->a:Landroid/app/Activity;

    .line 94
    invoke-interface {v3, v4}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laik;

    .line 95
    iget-object v4, p0, Lcom/twitter/android/timeline/at;->a:Landroid/app/Activity;

    .line 96
    invoke-direct {p0, v4, v2, p3}, Lcom/twitter/android/timeline/at;->a(Landroid/app/Activity;Lcom/twitter/android/widget/ex;I)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 95
    invoke-virtual {v3, v2}, Laik;->a(Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/timeline/at;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v3, v1, v2}, Laii;->a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 108
    invoke-interface {v3}, Laii;->b()V

    .line 109
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/MomentsCardCarouselItemView;->a(Laii;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/timeline/at;->c:Lcom/twitter/util/object/c;

    iget-object v3, p0, Lcom/twitter/android/timeline/at;->a:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laib;

    .line 100
    iget-object v3, p2, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    iget-object v3, v3, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    iget-object v3, v3, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Laib;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 102
    invoke-virtual {v2, v3}, Laib;->a(Lcom/twitter/model/moments/a;)V

    .line 103
    iget-object v3, p0, Lcom/twitter/android/timeline/at;->a:Landroid/app/Activity;

    invoke-virtual {p0, v3, p2, p3}, Lcom/twitter/android/timeline/at;->a(Landroid/app/Activity;Lcom/twitter/android/timeline/as;I)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Laib;->a(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    .line 104
    goto :goto_1
.end method

.method public synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/timeline/at;->b(Landroid/view/View;Lcom/twitter/android/timeline/as;I)V

    return-void
.end method

.method public b(Landroid/view/View;Lcom/twitter/android/timeline/as;I)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public synthetic b(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/timeline/at;->a(Landroid/view/View;Lcom/twitter/android/timeline/as;I)V

    return-void
.end method
