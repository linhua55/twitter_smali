.class public abstract Lctu;
.super Lcts;
.source "Twttr"


# instance fields
.field public final a:Lctp;

.field public final d:Lctr;


# direct methods
.method protected constructor <init>(Ljava/lang/String;JLctp;Lctr;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcts;-><init>(Ljava/lang/String;J)V

    .line 29
    iput-object p4, p0, Lctu;->a:Lctp;

    .line 30
    iput-object p5, p0, Lctu;->d:Lctr;

    .line 31
    return-void
.end method
