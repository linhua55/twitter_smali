.class public abstract Lauc;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected final c:Landroid/content/Intent;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lauc;-><init>(Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lauc;->c:Landroid/content/Intent;

    .line 21
    return-void
.end method


# virtual methods
.method y()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lauc;->c:Landroid/content/Intent;

    return-object v0
.end method
