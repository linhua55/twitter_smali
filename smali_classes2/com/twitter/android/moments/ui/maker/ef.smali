.class final Lcom/twitter/android/moments/ui/maker/ef;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/d",
        "<",
        "Lakx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ef;->a:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lakx;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lakx;

    new-instance v1, Lakw;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ef;->a:Landroid/view/LayoutInflater;

    invoke-direct {v1, v2}, Lakw;-><init>(Landroid/view/LayoutInflater;)V

    invoke-direct {v0, v1}, Lakx;-><init>(Lakw;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/ef;->a()Lakx;

    move-result-object v0

    return-object v0
.end method
