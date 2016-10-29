.class public abstract Lcom/twitter/android/timeline/bt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/android/timeline/bp;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/twitter/android/timeline/bf;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILcom/twitter/android/timeline/bf;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/twitter/android/timeline/bf;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/twitter/android/timeline/bt;->a:I

    .line 24
    iput-object p2, p0, Lcom/twitter/android/timeline/bt;->b:Lcom/twitter/android/timeline/bf;

    .line 25
    iput-object p3, p0, Lcom/twitter/android/timeline/bt;->c:Ljava/lang/Class;

    .line 26
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/timeline/bt;->c:Ljava/lang/Class;

    const v1, 0x7f13006f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 33
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/twitter/android/timeline/bt;->b:Lcom/twitter/android/timeline/bf;

    invoke-virtual {v0}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/timeline/bt;->a:I

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/timeline/bf;->a(Ljava/lang/String;II)V

    .line 37
    :cond_0
    return-void
.end method
