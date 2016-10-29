.class public Lcom/twitter/android/timeline/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/widget/n",
        "<",
        "Lcom/twitter/android/timeline/as;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/timeline/ay;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/ay;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/twitter/android/timeline/ar;->a:Lcom/twitter/android/timeline/ay;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/timeline/as;I)V
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/twitter/android/widget/ex;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/twitter/android/timeline/ar;->a:Lcom/twitter/android/timeline/ay;

    check-cast p1, Lcom/twitter/android/widget/ex;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/timeline/ay;->a(Lcom/twitter/android/widget/ex;I)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/timeline/ar;->a:Lcom/twitter/android/timeline/ay;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/timeline/ay;->a(Lcom/twitter/android/timeline/as;I)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/timeline/as;Z)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/timeline/ar;->a(Lcom/twitter/android/timeline/as;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/timeline/ar;->a(Lcom/twitter/android/timeline/as;Z)V

    return-void
.end method

.method public a(Lcom/twitter/android/timeline/as;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ar;->a(Lcom/twitter/android/timeline/as;)Z

    move-result v0

    return v0
.end method
