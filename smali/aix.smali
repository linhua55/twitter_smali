.class public Laix;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lajd;

.field public final b:Lajd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Laix;->a:Lajd;

    .line 7
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    iput-object v0, p0, Laix;->b:Lajd;

    return-void
.end method
