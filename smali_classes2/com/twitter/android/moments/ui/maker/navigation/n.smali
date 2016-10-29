.class public Lcom/twitter/android/moments/ui/maker/navigation/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/ap;


# instance fields
.field private final a:Lamp;


# direct methods
.method public constructor <init>(Lamp;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/n;->a:Lamp;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/n;->a:Lamp;

    invoke-virtual {v0}, Lamp;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/maker/navigation/au;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/twitter/android/moments/ui/maker/navigation/au;->b:Lcom/twitter/android/moments/ui/maker/navigation/au;

    return-object v0
.end method

.method public d()Lcom/twitter/android/moments/ui/maker/navigation/aw;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/navigation/o;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/n;)V

    return-object v0
.end method
