.class public interface abstract Lcom/twitter/library/av/playback/df;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final b:Lcom/twitter/library/av/playback/df;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/library/av/playback/dg;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/dg;-><init>()V

    sput-object v0, Lcom/twitter/library/av/playback/df;->b:Lcom/twitter/library/av/playback/df;

    return-void
.end method


# virtual methods
.method public abstract a()Lbvk;
.end method

.method public abstract a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeItem;
.end method

.method public abstract b()Lcss;
.end method
