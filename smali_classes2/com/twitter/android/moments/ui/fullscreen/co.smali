.class public Lcom/twitter/android/moments/ui/fullscreen/co;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/i;
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/media/request/i",
        "<",
        "Lcom/twitter/media/request/ImageResponse;",
        ">;",
        "Lcom/twitter/moments/core/ui/widget/sectionpager/a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/cy;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/ft;

.field private final d:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lajx;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentPage;Lajx;Lakc;Lcom/twitter/android/moments/ui/fullscreen/cy;Lcom/twitter/android/moments/ui/fullscreen/ft;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lajx;",
            "Lakc;",
            "Lcom/twitter/android/moments/ui/fullscreen/cy;",
            "Lcom/twitter/android/moments/ui/fullscreen/ft;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lahd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 48
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->g:Lajx;

    .line 49
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->c:Lcom/twitter/android/moments/ui/fullscreen/ft;

    .line 50
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->d:Lcom/twitter/util/x;

    .line 51
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/da;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->g:Lajx;

    invoke-direct {v0, v1, p5, p8}, Lcom/twitter/android/moments/ui/fullscreen/da;-><init>(Laln;Lcom/twitter/android/moments/ui/fullscreen/ft;Lahd;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->e:Lcom/twitter/util/y;

    .line 52
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->b:Lcom/twitter/android/moments/ui/fullscreen/cy;

    .line 53
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->f:Lcom/twitter/android/moments/ui/fullscreen/bs;

    .line 55
    invoke-virtual {p3, p0}, Lakc;->a(Lcom/twitter/media/request/i;)V

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-static {v1}, Lcom/twitter/model/moments/viewmodels/o;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lakc;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V

    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->f:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lcom/twitter/android/moments/ui/fullscreen/co;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lcom/twitter/android/moments/viewmodels/q;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lahd;",
            "Lcom/twitter/android/moments/ui/fullscreen/gn;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/co;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    invoke-interface {p2}, Lcom/twitter/android/moments/viewmodels/q;->c()Lcom/twitter/model/moments/k;

    move-result-object v1

    .line 67
    invoke-static {v0, v1, p6, v3}, Lajx;->a(Landroid/view/LayoutInflater;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;Z)Lajx;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11000a

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 72
    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/ft;

    invoke-virtual {v2}, Lajx;->b()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v1

    invoke-direct {v5, v1, v0, v3}, Lcom/twitter/android/moments/ui/fullscreen/ft;-><init>(Landroid/view/View;FI)V

    .line 75
    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/cy;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v0, v1, p4}, Lcom/twitter/android/moments/ui/fullscreen/cy;-><init>(Lake;Landroid/content/res/Resources;Ljava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/bs;)V

    .line 78
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/co;

    .line 79
    invoke-static {v2, p2}, Lakc;->a(Lajx;Lcom/twitter/android/moments/viewmodels/q;)Lakc;

    move-result-object v3

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/moments/ui/fullscreen/co;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;Lajx;Lakc;Lcom/twitter/android/moments/ui/fullscreen/cy;Lcom/twitter/android/moments/ui/fullscreen/ft;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;Lahd;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->g:Lajx;

    invoke-virtual {v0}, Lajx;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->c:Lcom/twitter/android/moments/ui/fullscreen/ft;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ft;->a(F)V

    .line 113
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->f:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 115
    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->d:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->f:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->f:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 123
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iput-boolean v3, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->i:Z

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->f:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->g:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 127
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iput-boolean v3, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->h:Z

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/co;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->h:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->f:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->c:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    .line 94
    invoke-virtual {v2}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->d:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->e:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->d:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->e:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 102
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->d:Lcom/twitter/util/x;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->e:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 107
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/co;->b:Lcom/twitter/android/moments/ui/fullscreen/cy;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cy;->g()V

    .line 108
    return-void
.end method
