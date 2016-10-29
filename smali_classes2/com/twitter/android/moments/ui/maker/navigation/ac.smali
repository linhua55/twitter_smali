.class public Lcom/twitter/android/moments/ui/maker/navigation/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/e",
        "<",
        "Lcom/twitter/android/moments/ui/maker/navigation/ao;",
        "Lcom/twitter/model/moments/ak;",
        "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/moments/ui/maker/df;

.field private final c:Lcom/twitter/android/moments/data/maker/a;

.field private final d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->a:Landroid/app/Activity;

    .line 26
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 27
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 28
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->d:Landroid/view/ViewGroup;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/ak;)Lcom/twitter/android/moments/ui/maker/navigation/aa;
    .locals 6

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/v;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/viewdelegate/v;

    move-result-object v2

    .line 35
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->c:Lcom/twitter/android/moments/data/maker/a;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/navigation/ac;->b:Lcom/twitter/android/moments/ui/maker/df;

    move-object v0, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/by;->a(Lcom/twitter/model/moments/ak;Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/viewdelegate/v;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/by;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/aa;

    .line 38
    invoke-static {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/w;)Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/navigation/aa;-><init>(Lcom/twitter/android/moments/ui/maker/by;Lcom/twitter/android/moments/ui/maker/viewdelegate/i;)V

    .line 37
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/ao;

    check-cast p2, Lcom/twitter/model/moments/ak;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/navigation/ac;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/ak;)Lcom/twitter/android/moments/ui/maker/navigation/aa;

    move-result-object v0

    return-object v0
.end method
