.class Lcom/twitter/android/moments/ui/fullscreen/bj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/moments/core/ui/widget/sectionpager/d;",
        "Lcom/twitter/moments/core/ui/widget/sectionpager/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/bf;

.field private final c:Lcom/twitter/model/moments/viewmodels/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/i;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bj;->a:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/bj;->b:Lcom/twitter/android/moments/ui/fullscreen/bf;

    .line 212
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/bj;->c:Lcom/twitter/model/moments/viewmodels/i;

    .line 213
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/moments/core/ui/widget/sectionpager/d;)Lcom/twitter/moments/core/ui/widget/sectionpager/a;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bj;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bj;->b:Lcom/twitter/android/moments/ui/fullscreen/bf;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/bj;->c:Lcom/twitter/model/moments/viewmodels/i;

    invoke-static {v0, v1, v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/cu;->a(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/i;Lcom/twitter/moments/core/ui/widget/sectionpager/d;)Lcom/twitter/android/moments/ui/fullscreen/cu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    check-cast p1, Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/bj;->a(Lcom/twitter/moments/core/ui/widget/sectionpager/d;)Lcom/twitter/moments/core/ui/widget/sectionpager/a;

    move-result-object v0

    return-object v0
.end method
