.class public Ltv/periscope/android/ui/love/HeartContainerView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"


# instance fields
.field private a:Ltv/periscope/android/ui/love/b;

.field private b:Ltv/periscope/android/ui/love/m;

.field private c:Ltv/periscope/android/ui/love/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->a()V

    .line 33
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/love/HeartContainerView;)Ltv/periscope/android/ui/love/n;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->c:Ltv/periscope/android/ui/love/n;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Ltv/periscope/android/ui/love/h;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/ui/love/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->a:Ltv/periscope/android/ui/love/b;

    .line 42
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->a:Ltv/periscope/android/ui/love/b;

    new-instance v1, Ltv/periscope/android/ui/love/a;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/love/a;-><init>(Ltv/periscope/android/ui/love/HeartContainerView;)V

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/love/b;->a(Ltv/periscope/android/ui/love/c;)V

    .line 53
    new-instance v0, Ltv/periscope/android/ui/love/m;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/ui/love/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->b:Ltv/periscope/android/ui/love/m;

    .line 54
    new-instance v0, Ltv/periscope/android/ui/love/n;

    const/16 v1, 0xa

    iget-object v2, p0, Ltv/periscope/android/ui/love/HeartContainerView;->b:Ltv/periscope/android/ui/love/m;

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/ui/love/n;-><init>(ILtv/periscope/android/ui/love/m;)V

    iput-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->c:Ltv/periscope/android/ui/love/n;

    .line 55
    return-void

    .line 39
    :cond_0
    new-instance v0, Ltv/periscope/android/ui/love/d;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/ui/love/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->a:Ltv/periscope/android/ui/love/b;

    goto :goto_0
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->c:Ltv/periscope/android/ui/love/n;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/love/n;->a(I)Ltv/periscope/android/ui/love/HeartView;

    move-result-object v0

    .line 73
    iget-object v1, p0, Ltv/periscope/android/ui/love/HeartContainerView;->a:Ltv/periscope/android/ui/love/b;

    invoke-virtual {v1, v0, p0, p2}, Ltv/periscope/android/ui/love/b;->a(Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;Z)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->b:Ltv/periscope/android/ui/love/m;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/love/m;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public b(IZ)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ltv/periscope/android/ui/love/HeartView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/love/HeartContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/android/ui/love/HeartView;-><init>(Landroid/content/Context;)V

    .line 78
    sget v1, Ltv/periscope/android/library/k;->ps__ic_screenshot_border:I

    sget v2, Ltv/periscope/android/library/k;->ps__ic_screenshot_fill:I

    invoke-virtual {v0, p1, v1, v2}, Ltv/periscope/android/ui/love/HeartView;->a(III)V

    .line 79
    iget-object v1, p0, Ltv/periscope/android/ui/love/HeartContainerView;->a:Ltv/periscope/android/ui/love/b;

    invoke-virtual {v1, v0, p0, p2}, Ltv/periscope/android/ui/love/b;->a(Ltv/periscope/android/ui/love/HeartView;Landroid/view/ViewGroup;Z)V

    .line 80
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 60
    iget-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->a:Ltv/periscope/android/ui/love/b;

    invoke-virtual {v0}, Ltv/periscope/android/ui/love/b;->a()V

    .line 61
    return-void
.end method

.method public setImageLoader(Ldmy;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltv/periscope/android/ui/love/HeartContainerView;->b:Ltv/periscope/android/ui/love/m;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/love/m;->a(Ldmy;)V

    .line 69
    return-void
.end method
