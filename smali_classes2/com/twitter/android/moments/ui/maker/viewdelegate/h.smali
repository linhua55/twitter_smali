.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

.field private final c:I

.field private final d:Landroid/graphics/Rect;

.field private final e:Lrx/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcwu;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1}, Lcwu;-><init>(F)V

    sput-object v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;Lcom/twitter/android/moments/ui/maker/viewdelegate/x;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lrx/subjects/ReplaySubject;->q()Lrx/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->e:Lrx/subjects/ReplaySubject;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->f:Landroid/graphics/Rect;

    .line 37
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

    .line 38
    iput p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->c:I

    .line 39
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->d:Landroid/graphics/Rect;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->e:Lrx/subjects/ReplaySubject;

    return-object v0
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v3, 0x1d2

    .line 50
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;->a()Landroid/view/View;

    move-result-object v1

    .line 51
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;->b()I

    move-result v0

    iget v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->c:I

    if-ne v0, v2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->d:Landroid/graphics/Rect;

    sget-object v4, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->a:Landroid/view/animation/Interpolator;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->e:Lrx/subjects/ReplaySubject;

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/x;->a(Landroid/view/View;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;Lrx/subjects/k;)V

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->f:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->f:Landroid/graphics/Rect;

    const/16 v4, 0x29a

    sget-object v5, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->a:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/x;->a(Landroid/view/View;Landroid/graphics/Rect;IILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/h;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
