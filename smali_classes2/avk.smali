.class public Lavk;
.super Lauz;
.source "Twttr"

# interfaces
.implements Lavn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lauz",
        "<",
        "Lcom/twitter/database/model/j",
        "<TT;>;>;",
        "Lavn;"
    }
.end annotation


# instance fields
.field private final a:Lavc;

.field private final b:Lcom/twitter/database/model/p;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcom/twitter/database/model/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager;",
            "I",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/bt;",
            ">;",
            "Lcom/twitter/database/model/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lauz;-><init>()V

    .line 26
    new-instance v0, Lavc;

    invoke-direct {v0, p1, p2, p3}, Lavc;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;)V

    iput-object v0, p0, Lavk;->a:Lavc;

    .line 27
    iput-object p4, p0, Lavk;->b:Lcom/twitter/database/model/p;

    .line 28
    return-void
.end method

.method static synthetic a(Lavk;)Lcom/twitter/database/model/p;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lavk;->b:Lcom/twitter/database/model/p;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lavk;->a:Lavc;

    invoke-virtual {v0}, Lavc;->a()V

    .line 44
    return-void
.end method

.method public a(Lavg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavg",
            "<",
            "Lcom/twitter/database/model/j",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1}, Lauz;->a(Lavg;)V

    .line 33
    iget-object v0, p0, Lavk;->a:Lavc;

    new-instance v1, Lavl;

    invoke-direct {v1, p0, p1}, Lavl;-><init>(Lavk;Lavg;)V

    invoke-virtual {v0, v1}, Lavc;->a(Lavg;)V

    .line 39
    return-void
.end method
