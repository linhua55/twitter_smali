.class public Lcom/twitter/android/moments/ui/maker/df;
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
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        "Lcom/twitter/android/moments/ui/maker/dc;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final b:Lcom/twitter/util/math/Size;

.field final c:Lcom/twitter/util/math/Size;

.field final d:Lcom/twitter/android/moments/ui/maker/du;

.field private final e:Laeo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/maker/du;Laeo;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/df;->a:Landroid/app/Activity;

    .line 160
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/df;->b:Lcom/twitter/util/math/Size;

    .line 161
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/df;->c:Lcom/twitter/util/math/Size;

    .line 162
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/df;->d:Lcom/twitter/android/moments/ui/maker/du;

    .line 163
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/df;->e:Laeo;

    .line 164
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/du;Laeo;)Lcom/twitter/android/moments/ui/maker/df;
    .locals 6

    .prologue
    .line 151
    invoke-static {p0}, Lcom/twitter/android/moments/ui/maker/dy;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/dy;

    move-result-object v1

    .line 152
    new-instance v0, Lcom/twitter/android/moments/ui/maker/df;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/dy;->a()Lcom/twitter/util/math/Size;

    move-result-object v2

    .line 153
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/dy;->b()Lcom/twitter/util/math/Size;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/df;-><init>(Landroid/app/Activity;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/maker/du;Laeo;)V

    .line 152
    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/dc;
    .locals 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/df;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/df;->b:Lcom/twitter/util/math/Size;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/df;->c:Lcom/twitter/util/math/Size;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/df;->d:Lcom/twitter/android/moments/ui/maker/du;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/df;->e:Laeo;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/dc;->a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/maker/du;Laeo;)Lcom/twitter/android/moments/ui/maker/dc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    check-cast p1, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/df;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/dc;

    move-result-object v0

    return-object v0
.end method
