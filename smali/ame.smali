.class public Lame;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasm",
        "<",
        "Lamy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/k;

.field private final b:Lcom/twitter/android/moments/ui/maker/aq;

.field private final c:Lcom/twitter/android/moments/ui/maker/bm;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/k;Lcom/twitter/android/moments/ui/maker/aq;Lcom/twitter/android/moments/ui/maker/bm;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lame;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/k;

    .line 27
    iput-object p2, p0, Lame;->b:Lcom/twitter/android/moments/ui/maker/aq;

    .line 28
    iput-object p3, p0, Lame;->c:Lcom/twitter/android/moments/ui/maker/bm;

    .line 29
    return-void
.end method

.method static synthetic a(Lame;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lame;->b()V

    return-void
.end method

.method static synthetic b(Lame;)Lcom/twitter/android/moments/ui/maker/bm;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lame;->c:Lcom/twitter/android/moments/ui/maker/bm;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lame;->b:Lcom/twitter/android/moments/ui/maker/aq;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/aq;->a()V

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lamy;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lame;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/k;

    new-instance v1, Lamf;

    invoke-direct {v1, p0}, Lamf;-><init>(Lame;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->a(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lamy;

    invoke-virtual {p0, p1}, Lame;->a(Lamy;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lame;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/k;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
