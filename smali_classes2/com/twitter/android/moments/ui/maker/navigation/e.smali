.class public Lcom/twitter/android/moments/ui/maker/navigation/e;
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
        "Lcom/twitter/android/moments/ui/maker/navigation/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/twitter/android/moments/ui/maker/df;

.field private final c:Lcom/twitter/android/moments/data/maker/a;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Lcom/twitter/android/moments/ui/maker/a;

.field private final f:Lcom/twitter/android/moments/ui/maker/dh;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->a:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->c:Lcom/twitter/android/moments/data/maker/a;

    .line 32
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 33
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->d:Landroid/view/ViewGroup;

    .line 34
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->e:Lcom/twitter/android/moments/ui/maker/a;

    .line 35
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->f:Lcom/twitter/android/moments/ui/maker/dh;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/ak;)Lcom/twitter/android/moments/ui/maker/navigation/c;
    .locals 8

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/f;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/f;

    move-result-object v2

    .line 42
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->c:Lcom/twitter/android/moments/data/maker/a;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->b:Lcom/twitter/android/moments/ui/maker/df;

    iget-object v6, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->e:Lcom/twitter/android/moments/ui/maker/a;

    iget-object v7, p0, Lcom/twitter/android/moments/ui/maker/navigation/e;->f:Lcom/twitter/android/moments/ui/maker/dh;

    move-object v0, p2

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/twitter/android/moments/ui/maker/ab;->a(Lcom/twitter/model/moments/ak;Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/viewdelegate/f;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/a;Lcom/twitter/android/moments/ui/maker/dh;)Lcom/twitter/android/moments/ui/maker/ab;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/c;

    .line 46
    invoke-static {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/i;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/w;)Lcom/twitter/android/moments/ui/maker/viewdelegate/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/navigation/c;-><init>(Lcom/twitter/android/moments/ui/maker/ab;Lcom/twitter/android/moments/ui/maker/viewdelegate/i;)V

    .line 45
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/twitter/android/moments/ui/maker/navigation/ao;

    check-cast p2, Lcom/twitter/model/moments/ak;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/navigation/e;->a(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/ak;)Lcom/twitter/android/moments/ui/maker/navigation/c;

    move-result-object v0

    return-object v0
.end method
