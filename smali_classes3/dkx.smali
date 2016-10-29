.class public Ldkx;
.super Lrx/o;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/p",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p2}, Lrx/o;-><init>(Lrx/p;)V

    .line 97
    iput-object p1, p0, Ldkx;->c:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static a(Ljava/lang/Object;Lrx/o;)Ldkx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/o",
            "<TT;>;)",
            "Ldkx",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ldkx;

    new-instance v1, Ldky;

    invoke-direct {v1, p1}, Ldky;-><init>(Lrx/o;)V

    invoke-direct {v0, p0, v1}, Ldkx;-><init>(Ljava/lang/Object;Lrx/p;)V

    return-object v0
.end method


# virtual methods
.method public q()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ldkx;->c:Ljava/lang/Object;

    return-object v0
.end method
