.class public Lcom/twitter/android/nk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/twitter/android/nl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/twitter/android/nk;->a:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;ILcom/twitter/android/nl;)Z
    .locals 1

    .prologue
    .line 19
    iput-object p3, p0, Lcom/twitter/android/nk;->b:Lcom/twitter/android/nl;

    .line 20
    iget-object v0, p0, Lcom/twitter/android/nk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    move-result v0

    return v0
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/nk;->b:Lcom/twitter/android/nl;

    invoke-interface {v0, p1, p2}, Lcom/twitter/android/nl;->a(ILcom/twitter/library/service/x;)V

    .line 34
    return-void
.end method
