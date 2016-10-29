.class public Lcom/twitter/android/moments/ui/fullscreen/hu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/moments/core/ui/widget/sectionpager/a;


# instance fields
.field private final a:Lalc;

.field private final b:Lald;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/viewmodels/af;Lalc;Lald;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/af;",
            "Lalc;",
            "Lald;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/gl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hu;->a:Lalc;

    .line 29
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/hu;->b:Lald;

    .line 30
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/af;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lald;->a(Lcom/twitter/model/moments/viewmodels/af;Lcom/twitter/model/core/Tweet;)V

    .line 31
    invoke-virtual {p3, p5}, Lald;->a(Lcom/twitter/android/moments/ui/fullscreen/w;)V

    .line 32
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/af;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-virtual {p3, p6, v0}, Lald;->a(Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/model/core/Tweet;)V

    .line 34
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/af;->j()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->f:Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent$PageLoadingEventType;->a()Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/af;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/hu;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/model/moments/viewmodels/af;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/gl;",
            "Lcom/twitter/android/moments/ui/fullscreen/ew;",
            "Lcin;",
            "Lcom/twitter/android/moments/ui/fullscreen/cv;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/hu;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lalc;->a(Landroid/view/LayoutInflater;)Lalc;

    move-result-object v2

    .line 49
    new-instance v0, Lald;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v5, Lcom/twitter/android/moments/ui/maker/cv;

    invoke-direct {v5}, Lcom/twitter/android/moments/ui/maker/cv;-><init>()V

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lald;-><init>(Landroid/content/res/Resources;Lalc;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/maker/cv;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 54
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/hu;

    move-object v4, p1

    move-object v5, v2

    move-object v6, v0

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/hu;-><init>(Lcom/twitter/model/moments/viewmodels/af;Lalc;Lald;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;)V

    return-object v3
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/w;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/hu;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/model/moments/viewmodels/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/w;",
            "Lcom/twitter/android/moments/ui/fullscreen/gl;",
            "Lcom/twitter/android/moments/ui/fullscreen/ew;",
            "Lcin;",
            "Lcom/twitter/android/moments/ui/fullscreen/cv;",
            ")",
            "Lcom/twitter/android/moments/ui/fullscreen/hu;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lalc;->a(Landroid/view/LayoutInflater;)Lalc;

    move-result-object v2

    .line 70
    new-instance v0, Lald;

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v5, Lcom/twitter/android/moments/ui/maker/cv;

    invoke-direct {v5}, Lcom/twitter/android/moments/ui/maker/cv;-><init>()V

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lald;-><init>(Landroid/content/res/Resources;Lalc;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/maker/cv;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 75
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/hu;

    move-object v4, p1

    move-object v5, v2

    move-object v6, v0

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/twitter/android/moments/ui/fullscreen/hu;-><init>(Lcom/twitter/model/moments/viewmodels/af;Lalc;Lald;Lcom/twitter/android/moments/ui/fullscreen/bs;Lcom/twitter/android/moments/ui/fullscreen/w;Lcom/twitter/android/moments/ui/fullscreen/gl;)V

    return-object v3
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hu;->a:Lalc;

    invoke-virtual {v0}, Lalc;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hu;->b:Lald;

    invoke-virtual {v0}, Lald;->c()V

    .line 96
    return-void
.end method
